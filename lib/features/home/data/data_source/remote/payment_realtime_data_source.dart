import 'dart:async';

import 'package:books_online/core/config/env_loader.dart';
import 'package:injectable/injectable.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

abstract class PaymentRealtimeDataSource {
  Stream<Map<String, dynamic>> listenPaymentStatus({required String transactionId});

  Future<void> dispose();
}

@LazySingleton(as: PaymentRealtimeDataSource)
class PaymentRealtimeDataSourceImpl implements PaymentRealtimeDataSource {
  io.Socket? _socket;
  StreamController<Map<String, dynamic>>? _controller;

  @override
  Stream<Map<String, dynamic>> listenPaymentStatus({required String transactionId}) {
    _cleanup();

    final controller = StreamController<Map<String, dynamic>>.broadcast();

    _controller = controller;

    final socket = io.io(
      EnvLoader.socketUrl,
      io.OptionBuilder().setTransports(['polling', 'websocket']).enableReconnection().setTimeout(10000).build(),
    );

    _socket = socket;

    socket.onConnect((_) {
      print('✅ Payment Socket connected: ${socket.id}');

      print('📡 Subscribe transaction: $transactionId');

      socket.emit('payment:subscribe', {'transactionId': transactionId});
    });

    socket.on('payment:status', (data) {
      print('💰 PAYMENT STATUS: $data');

      if (data is Map) {
        controller.add(Map<String, dynamic>.from(data));
      }
    });

    socket.onConnectError((error) {
      print('❌ Payment socket connection error: $error');

      if (!controller.isClosed) {
        controller.addError(error);
      }
    });

    socket.onError((error) {
      print('❌ Payment socket error: $error');
    });

    socket.onDisconnect((reason) {
      print('⚠️ Payment socket disconnected: $reason');
    });

    return controller.stream;
  }

  void _cleanup() {
    _socket?.disconnect();
    _socket?.dispose();

    _socket = null;

    final controller = _controller;
    _controller = null;

    controller?.close();
  }

  @override
  Future<void> dispose() async {
    _cleanup();
  }
}
