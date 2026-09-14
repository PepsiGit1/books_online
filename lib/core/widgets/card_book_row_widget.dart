import 'package:books_online/core/theme/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardBookRowWidget extends StatelessWidget {
  const CardBookRowWidget({
    super.key,
    required this.title,
    required this.author,
    required this.coverImageUrl,
    required this.rating,
    required this.progress,
    this.isPremium = false,
    this.isSaved = false,
    this.onTap,
    this.onBookmarkTap,
  });

  final String title;
  final String author;
  final String coverImageUrl;
  final double rating;
  final double progress;
  final bool isPremium;
  final bool isSaved;
  final VoidCallback? onTap;
  final VoidCallback? onBookmarkTap;

  @override
  Widget build(BuildContext context) {
    final normalizedProgress = progress.clamp(0.0, 1.0).toDouble();

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.grey.shade200)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _BookCover(imageUrl: coverImageUrl),

              const SizedBox(width: 14),

              Expanded(
                child: SizedBox(
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _RatingBadge(rating: rating),

                          const Spacer(),

                          if (isPremium) ...[
                            const Icon(Icons.workspace_premium_rounded, size: 20, color: Color(0xFFE0A72E)),
                            const SizedBox(width: 4),
                          ],

                          IconButton(
                            onPressed: onBookmarkTap,
                            icon: Icon(
                              isSaved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
                              color: isSaved ? AppColors.primary : Colors.grey.shade600,
                            ),
                            iconSize: 22,
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
                          ),
                        ],
                      ),

                      const SizedBox(height: 6),

                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, height: 1.2),
                      ),

                      const SizedBox(height: 5),

                      Text(author, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 13, color: Colors.grey.shade600)),

                      const Spacer(),

                      Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                value: normalizedProgress,
                                minHeight: 5,
                                backgroundColor: Colors.grey.shade200,
                                valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFCBA135)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${(normalizedProgress * 100).round()}%',
                            style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookCover extends StatelessWidget {
  const _BookCover({required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: 82,
        height: 120,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (_, __) => Container(color: Colors.grey.shade100, child: const Center(child: CircularProgressIndicator(strokeWidth: 2))),
          errorWidget:
              (_, __, ___) => Container(color: Colors.grey.shade100, child: Icon(Icons.menu_book_rounded, color: Colors.grey.shade400, size: 32)),
        ),
      ),
    );
  }
}

class _RatingBadge extends StatelessWidget {
  const _RatingBadge({required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
      decoration: BoxDecoration(color: const Color(0xFFFFF8E7), borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.star_rounded, size: 15, color: Color(0xFFE0A72E)),
          const SizedBox(width: 3),
          Text(rating.toStringAsFixed(1), style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF8A7A4E))),
        ],
      ),
    );
  }
}
