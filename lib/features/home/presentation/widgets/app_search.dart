import 'package:books_online/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final double width;
  final String hintText;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onClear;

  const AppSearchBar({super.key, required this.controller, this.width = 400, this.hintText = 'Search', this.onSubmitted, this.onClear});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: controller,
      builder: (context, value, child) {
        return TextField(
          controller: controller,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: const Icon(Icons.search),
            suffixIcon:
                value.text.isNotEmpty
                    ? IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 18,
                      icon: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(color: AppColors.grey, borderRadius: BorderRadius.circular(100)),
                        child: const Icon(Icons.clear, color: AppColors.white),
                      ),
                      onPressed: () {
                        controller.clear();
                        onClear?.call();
                      },
                    )
                    : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
            filled: true,
          ),
        );
      },
    );
  }
}
