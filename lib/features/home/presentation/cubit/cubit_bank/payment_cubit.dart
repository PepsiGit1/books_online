import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/features/home/data/model/payment_model.dart';
import 'package:books_online/features/home/domain/usecase/generate_bcel_qr_use_case.dart';
import 'package:books_online/features/home/domain/usecase/generate_ib_qr_use_case.dart';
import 'package:books_online/features/home/domain/usecase/generate_jdb_qr_use_case.dart';
import 'package:books_online/features/home/domain/usecase/listen_payment_status_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

@injectable
class PaymentCubit extends Cubit<PaymentState> {
  final GenerateBcelQrUseCase _generateBcelQr;
  final GenerateJdbQrUseCase _generateJdbQr;
  final GenerateIbQrUseCase _generateIbQr;
  final ListenPaymentStatusUseCase _listenPaymentStatus;
  PaymentCubit(this._generateBcelQr, this._generateJdbQr, this._generateIbQr, this._listenPaymentStatus) : super(PaymentState());
  StreamSubscription<Map<String, dynamic>>? _paymentSubscription;

  Future<PaymentModel?> generateBcelQr({required double amount}) {
    return _generate(bank: 'BCEL', request: () => _generateBcelQr(amount: amount, description: 'Books Online'));
  }

  Future<PaymentModel?> generateJdbQr({required double amount}) {
    return _generate(bank: 'JDB', request: () => _generateJdbQr(amount: amount, description: 'Books Online'));
  }

  Future<PaymentModel?> generateIbQr({required double amount}) {
    return _generate(bank: 'IB', request: () => _generateIbQr(amount: amount, description: 'Books Online'));
  }

  Future<PaymentModel?> _generate({required String bank, required Future<dynamic> Function() request}) async {
    if (isClosed) return null;

    emit(state.copyWith(status: Status.loading, isLoading: true, selectedBank: bank, mess: '', payment: null, paymentStatus: PaymentStatus.pending));

    try {
      final result = await request();

      if (isClosed) return null;

      if (result.isSuccess && result.data != null) {
        final payment = result.data as PaymentModel;

        emit(state.copyWith(status: Status.success, isLoading: false, payment: payment, paymentStatus: PaymentStatus.pending));

        return payment;
      }

      emit(state.copyWith(status: Status.failure, isLoading: false, mess: result.error ?? 'Payment failed.'));

      return null;
    } catch (e) {
      if (isClosed) return null;

      emit(state.copyWith(status: Status.failure, isLoading: false, mess: e.toString()));

      return null;
    }
  }

  void listenPaymentStatus({required String transactionId}) {
    _paymentSubscription?.cancel();
    if (transactionId.isEmpty) {
      emit(state.copyWith(paymentStatus: PaymentStatus.failed, mess: 'Invalid transaction ID.'));
      return;
    }
    emit(state.copyWith(paymentStatus: PaymentStatus.pending, mess: ''));
    _paymentSubscription = _listenPaymentStatus(transactionId: transactionId).listen(
      _handlePaymentEvent,
      onError: (error) {
        if (isClosed) return;
        emit(state.copyWith(paymentStatus: PaymentStatus.pending, mess: 'Connection lost. Waiting for payment confirmation...'));
      },
    );
  }

  void _handlePaymentEvent(Map<String, dynamic> data) {
    if (isClosed) return;
    final status = data['status']?.toString().toUpperCase();
    switch (status) {
      case 'PAID':
      case 'SUCCESS':
      case 'PAYMENT_COMPLETED':
        emit(state.copyWith(paymentStatus: PaymentStatus.paid, mess: ''));

        _paymentSubscription?.cancel();
        _paymentSubscription = null;
        break;

      case 'FAILED':
      case 'CANCELLED':
      case 'PAYMENT_FAILED':
        emit(state.copyWith(paymentStatus: PaymentStatus.failed, mess: data['message']?.toString() ?? 'Payment failed.'));

        _paymentSubscription?.cancel();
        _paymentSubscription = null;
        break;

      default:
        print('Unknown payment status: $status');
    }
  }
}
