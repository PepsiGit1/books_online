import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:flutter/material.dart';

class CategoryTabsWidget extends StatelessWidget {
  const CategoryTabsWidget({super.key, required this.categories, required this.selectedCategoryId, required this.onCategorySelected});

  final List<CategoryModel> categories;
  final int selectedCategoryId;
  final ValueChanged<int> onCategorySelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final category = categories[index];
          final isSelected = category.id == selectedCategoryId;

          return InkWell(
            onTap: () => onCategorySelected(category.id),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeOutCubic,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Center(
                child: Text(
                  category.name,
                  style: theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w600, color: isSelected ? AppColors.bronze : AppColors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
