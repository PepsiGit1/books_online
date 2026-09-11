import 'package:flutter/material.dart';

class MenuItemData {
  final IconData icon;
  final String label;
  final Color? color;
  final VoidCallback? onTap;

  const MenuItemData({required this.icon, required this.label, this.color, this.onTap});
}

class MenuGroupWidget extends StatelessWidget {
  final List<MenuItemData> items;

  const MenuGroupWidget({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: const Color(0xFFF5F5F7), borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isLast = index == items.length - 1;

          return Column(
            children: [
              MenuTile(item: item),
              if (!isLast)
                const Padding(padding: EdgeInsets.symmetric(horizontal: 16), child: Divider(height: 1, thickness: 0.6, color: Color(0xFFE2E2E5))),
            ],
          );
        }),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final MenuItemData item;

  const MenuTile({required this.item});

  @override
  Widget build(BuildContext context) {
    final color = item.color ?? const Color(0xFF1C1C1E);

    return InkWell(
      onTap: item.onTap ?? () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(color: (item.color ?? Colors.black).withOpacity(0.06), shape: BoxShape.circle),
              child: Icon(item.icon, size: 18, color: color),
            ),
            const SizedBox(width: 14),
            Expanded(child: Text(item.label, style: TextStyle(fontSize: 16, color: color, fontWeight: FontWeight.w500))),
            Icon(Icons.chevron_right, color: color.withOpacity(0.5), size: 22),
          ],
        ),
      ),
    );
  }
}
