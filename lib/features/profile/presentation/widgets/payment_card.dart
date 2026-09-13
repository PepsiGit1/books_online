import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/core/utils/format_duration.dart';
import 'package:books_online/core/widgets/badge.dart';
import 'package:flutter/material.dart';

class PaymentCardWidget extends StatelessWidget {
  final String paymentMethod;
  final String transactionId;
  final double amount;
  final String status;
  final String message;
  final DateTime createdAt;

  const PaymentCardWidget({
    super.key,
    required this.paymentMethod,
    required this.transactionId,
    required this.amount,
    required this.status,
    required this.message,
    required this.createdAt,
  });

  bool get _isCompleted => status == 'PAYMENT_COMPLETED';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.04), blurRadius: 16, offset: const Offset(0, 4))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(color: const Color(0xFF6C7CE7).withOpacity(0.12), borderRadius: BorderRadius.circular(14)),
                child: const Icon(Icons.add_card_rounded, color: Color(0xFF6C7CE7), size: 22),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Cash-in', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF1C1C1E))),
                    const SizedBox(height: 2),
                    Text('$paymentMethod', style: const TextStyle(fontSize: 13, color: AppColors.black)),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(FormatUtils.amount(amount), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xFF1C1C1E))),
                  const SizedBox(height: 6),
                  StatusBadge(completed: _isCompleted, status: status),
                ],
              ),
            ],
          ),

          const SizedBox(height: 5),
          Divider(height: 1, color: Colors.grey.shade100),
          const SizedBox(height: 5),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Transaction ID', style: TextStyle(fontSize: 11, color: AppColors.black)),
                  const SizedBox(height: 3),
                  Text(
                    transactionId.length > 10 ? '${transactionId.substring(0, 10)}...' : transactionId,
                    style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.black),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(FormatUtils.day(createdAt), style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: Color(0xFF3A3A3C))),
                  const SizedBox(height: 3),
                  Text(FormatUtils.time(createdAt), style: const TextStyle(fontSize: 12, color: AppColors.black)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
