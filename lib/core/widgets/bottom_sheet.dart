import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PaymentMethod {
  const PaymentMethod({required this.title, required this.subtitle, required this.icon, required this.onTap});
  final String title;
  final String subtitle;
  final Widget icon;
  final VoidCallback onTap;
}

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

void showPaymentPopup(BuildContext context, {required List<PaymentMethod> methods}) {
  showAppBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundLight,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Handle
              Container(width: 40, height: 4, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(10))),

              const SizedBox(height: 20),

              const Text('ເລືອກຊ່ອງທາງການຈ່າຍເງິນ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),

              const SizedBox(height: 12),

              ...methods.map((method) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: method.icon,
                  title: Text(method.title),
                  subtitle: Text(method.subtitle),
                  trailing: const Icon(Icons.chevron_right, color: Colors.grey),
                  onTap: () {
                    context.router.maybePop();
                    method.onTap();
                  },
                );
              }),

              const SizedBox(height: 10),
            ],
          ),
        ),
      );
    },
  );
}
