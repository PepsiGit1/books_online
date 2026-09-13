import 'package:books_online/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class StatusBadge extends StatelessWidget {
  final bool completed;
  final String status;

  const StatusBadge({super.key, required this.completed, required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      decoration: BoxDecoration(
        color: completed ? Colors.green.withOpacity(0.12) : Colors.orange.withOpacity(0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.success),
      ),
      child: Text(
        completed ? 'ສຳເລັດ' : status,
        style: TextStyle(color: completed ? Colors.green : Colors.orangeAccent, fontSize: 11, fontWeight: FontWeight.w600),
      ),
    );
  }
}
