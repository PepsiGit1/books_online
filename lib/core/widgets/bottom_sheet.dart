import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<T?> showAppBottomSheet<T>({required BuildContext context, required WidgetBuilder builder}) {
  return showMaterialModalBottomSheet<T>(
    context: context,
    expand: false,
    backgroundColor: Colors.transparent,
    clipBehavior: Clip.antiAlias,
    enableDrag: true,
    bounce: true,
    builder: builder,
  );
}

void showPaymentPopup(BuildContext context, {required VoidCallback onBcelPayment, required VoidCallback onPayPalPayment}) {
  showAppBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundLight,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Handle
              Container(width: 40, height: 4, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10))),
              const SizedBox(height: 20),
              Text('ເລືອກຊ່ອງທາງການຈ່າຍເງິນ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),

              const SizedBox(height: 12),

              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.qr_code_scanner_sharp, color: Colors.red),
                title: const Text('BCEL OnePay'),
                subtitle: const Text('Pay with BCEL OnePay'),
                trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                onTap: () {
                  context.router.maybePop();
                  onBcelPayment();
                },
              ),

              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.paypal, color: Colors.blue),
                title: const Text('PayPal'),
                subtitle: const Text('Pay with PayPal'),
                trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                onTap: () {
                  context.router.maybePop();
                  onPayPalPayment();
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    },
  );
}
