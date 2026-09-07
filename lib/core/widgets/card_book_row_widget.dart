import 'package:books_online/core/theme/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardBookRowWidget extends StatelessWidget {
  final String title;
  final String author;
  final String coverImageUrl;
  final double rating;
  final double progress;
  final bool isPremium;
  final bool isSaved;
  final VoidCallback? onTap;
  final VoidCallback? onBookmarkTap;

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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.6,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(16)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: CachedNetworkImage(
                  imageUrl: coverImageUrl,
                  width: size.width * 0.2,
                  height: size.height * 0.12,
                  fit: BoxFit.cover,

                  placeholder:
                      (context, url) => Container(
                        width: size.width * 0.2,
                        height: size.height * 0.12,
                        color: Colors.grey.shade200,
                        child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
                      ),

                  errorWidget:
                      (context, url, error) => Container(
                        width: size.width * 0.2,
                        height: size.height * 0.12,
                        color: Colors.grey.shade200,
                        child: const Icon(Icons.menu_book, color: Colors.grey),
                      ),
                ),
              ),

              // Book information
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Rating + Bookmark
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(color: const Color(0xFFF3EFE3), borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.star, size: 15, color: Color(0xFFE0A72E)),
                                const SizedBox(width: 4),
                                Text(
                                  rating.toStringAsFixed(1),
                                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xFF8A7A4E)),
                                ),
                              ],
                            ),
                          ),

                          const Spacer(),

                          // Bookmark
                          InkWell(
                            onTap: onBookmarkTap,
                            customBorder: const CircleBorder(),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(color: Color(0xFFE8E6FB), shape: BoxShape.circle),
                              child: Icon(isSaved ? Icons.bookmark : Icons.bookmark_border, size: 16, color: const Color(0xFF6C5DD3)),
                            ),
                          ),

                          // Premium
                          if (isPremium) ...[
                            const SizedBox(width: 6),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(color: Color(0xFFFCE9D9), shape: BoxShape.circle),
                              child: const Icon(Icons.workspace_premium, size: 16, color: Color(0xFFE8912D)),
                            ),
                          ],
                        ],
                      ),

                      const SizedBox(height: 8),

                      // Title
                      Text(
                        title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black87),
                      ),

                      const SizedBox(height: 4),

                      // Author
                      Text(author, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 13, color: Colors.grey.shade600)),

                      const SizedBox(height: 12),

                      // Progress
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: progress.clamp(0.0, 1.0),
                          minHeight: 6,
                          backgroundColor: Colors.grey.shade200,
                          valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFCBA135)),
                        ),
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
