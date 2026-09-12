import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/data/model/payment_model.dart';
import 'package:books_online/features/home/presentation/cubit/cubit_bank/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';

@RoutePage()
class PaymentPage extends StatelessWidget implements AutoRouteWrapper {
  const PaymentPage({super.key, required this.payment, required this.book});

  final PaymentModel payment;
  final BookModel book;

  @override
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final cubit = getIt<PaymentCubit>();

        final transactionId = payment.transactionId;

        if (transactionId != null && transactionId.isNotEmpty) {
          cubit.listenPaymentStatus(transactionId: transactionId);
        }

        return cubit;
      },
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final qrCode = payment.qrCode;

    if (qrCode == null || qrCode.isEmpty) {
      return const Scaffold(body: Center(child: Text('QR code is not available.')));
    }

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Payment')),
      body: SafeArea(
        child: BlocListener<PaymentCubit, PaymentState>(
          listener: (context, state) {
            if (state.paymentStatus == PaymentStatus.paid) {
              context.router.replace(PaymentSuccessRoute(book: book));
            }

            if (state.paymentStatus == PaymentStatus.failed) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.mess.isNotEmpty ? state.mess : 'Payment failed')));
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 30),

                const Text('Scan to Pay', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

                const SizedBox(height: 8),

                Text('Scan this QR code with your banking app.', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey.shade600)),

                const SizedBox(height: 40),

                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.08), blurRadius: 20, offset: const Offset(0, 8))],
                  ),
                  child: QrImageView(data: qrCode, version: QrVersions.auto, size: 280, backgroundColor: Colors.white),
                ),

                const SizedBox(height: 32),

                BlocBuilder<PaymentCubit, PaymentState>(
                  buildWhen: (previous, current) => previous.paymentStatus != current.paymentStatus,
                  builder: (context, state) {
                    if (state.paymentStatus == PaymentStatus.paid) {
                      return const _PaymentStatus(icon: Icons.check_circle, text: 'Payment completed', isSuccess: true);
                    }

                    if (state.paymentStatus == PaymentStatus.failed) {
                      return const _PaymentStatus(icon: Icons.error, text: 'Payment failed', isSuccess: false);
                    }

                    return const _PaymentStatus(icon: Icons.sync, text: 'Waiting for payment...', isSuccess: false, loading: true);
                  },
                ),

                const SizedBox(height: 12),

                Text(
                  'Please complete the payment using your banking app.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
                ),

                const Spacer(),

                Text('Transaction ID', style: TextStyle(color: Colors.grey.shade500, fontSize: 12)),

                const SizedBox(height: 4),

                Text(payment.transactionId ?? '-', textAlign: TextAlign.center, style: const TextStyle(fontSize: 11)),

                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PaymentStatus extends StatelessWidget {
  const _PaymentStatus({required this.icon, required this.text, this.loading = false, this.isSuccess = false});

  final IconData icon;
  final String text;
  final bool loading;
  final bool isSuccess;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (loading)
          const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
        else
          Icon(icon, size: 22, color: isSuccess ? Colors.green : Colors.red),

        const SizedBox(width: 10),

        Text(text, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: isSuccess ? Colors.green : Colors.grey.shade700)),
      ],
    );
  }
}
