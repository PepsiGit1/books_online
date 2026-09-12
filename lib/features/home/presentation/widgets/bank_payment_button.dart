import 'package:flutter/material.dart';

class BankPaymentButton extends StatelessWidget {
  const BankPaymentButton({super.key, required this.name, required this.icon, required this.onTap, this.isLoading = false});

  final String name;
  final Widget icon;
  final VoidCallback? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: isLoading ? null : onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            elevation: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 12),
              Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
              if (isLoading) ...[
                const SizedBox(width: 12),
                const SizedBox(width: 18, height: 18, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white)),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
