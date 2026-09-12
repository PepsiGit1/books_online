import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/widgets/error_view.dart';
import 'package:books_online/features/profile/presentation/widgets/payment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:books_online/core/enum/status.dart';
import 'package:books_online/features/profile/presentation/cubit/profile_cubit.dart';

@RoutePage()
class PaymentHistoryPage extends StatelessWidget implements AutoRouteWrapper {
  const PaymentHistoryPage({super.key});
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<ProfileCubit>()..getMyPaymentHistory(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColors.black,
        elevation: 0,
        title: const Text('Payment History', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if (state.status == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == Status.error) {
            return ErrorView(
              message: state.mess,
              onRetry: () {
                context.read<ProfileCubit>().getMyPaymentHistory();
              },
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              await context.read<ProfileCubit>().getMyPaymentHistory();
            },
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: state.payments.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final payment = state.payments[index];

                return PaymentCardWidget(
                  paymentMethod: payment.paymentMethod,
                  transactionId: payment.transactionId,
                  amount: payment.amount,
                  status: payment.status,
                  message: payment.message,
                  createdAt: payment.createdAt,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
