import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final List<CategoryModel> categories;
  final int selectedIndex;
  final ValueChanged<int>? onSelected;

  const CategoryWidget({super.key, required this.categories, this.selectedIndex = 0, this.onSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () => onSelected?.call(index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(color: isSelected ? AppColors.bronze : AppColors.white, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  categories[index].name,
                  style: TextStyle(color: isSelected ? Colors.white : Colors.black87, fontWeight: isSelected ? FontWeight.bold : FontWeight.normal),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
