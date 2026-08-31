import 'package:anim_search_bar/anim_search_bar.dart';
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
    return AnimSearchBar(
      width: width,
      textController: controller,
      helpText: hintText,
      onSuffixTap: () {
        controller.clear();
        onClear?.call();
      },
      onSubmitted: onSubmitted ?? (_) {},
    );
  }
}
