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
      io.OptionBuilder()
          .setPath('/socket.io')
          .setTransports(['websocket', 'polling'])
          .disableAutoConnect()
          .enableForceNew()
          .setTimeout(30000)
          .build(),
    );

    _socket = socket;

    socket.onConnect((_) {
      socket.emit('payment:subscribe', {'transactionId': transactionId});
    });

    socket.onConnectError((error) {
      print('❌ CONNECT ERROR: $error');
    });

    socket.onError((error) {
      print('❌ SOCKET ERROR: $error');
    });

    socket.on('payment:status', (data) {
      if (data is Map && !controller.isClosed) {
        controller.add(Map<String, dynamic>.from(data));
      }
    });

    socket.onDisconnect((reason) {
      print('⚠️ DISCONNECTED: $reason');
    });
    socket.connect();
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
