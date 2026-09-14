import 'package:flutter/material.dart';
import '../utils/app_responsive.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    super.key,
    this.title = 'No Data',
    this.message = 'There is nothing to show here.',
    this.icon = Icons.inbox_outlined,
    this.action,
  });

  final String title;
  final String message;
  final IconData icon;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: context.rPaddingAll(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: context.rIcon(64), color: Theme.of(context).colorScheme.outline),

            context.rVSpace(16),

            Text(title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: context.rFont(20)), textAlign: TextAlign.center),

            context.rVSpace(8),

            Text(message, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center),

            if (action != null) ...[context.rVSpace(24), action!],
          ],
        ),
      ),
    );
  }
}
