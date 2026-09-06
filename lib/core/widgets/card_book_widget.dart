import 'package:books_online/core/theme/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardBookWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final VoidCallback? onPressed;
  final double rating;
  final bool? isPremier;

  const CardBookWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.author,
    this.onPressed,
    required this.rating,
    this.isPremier,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book cover
            AspectRatio(
              aspectRatio: 0.7,
              child: Stack(
                children: [
                  // Cover image
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: AppColors.grey, width: 1)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(11),
                      child: CachedNetworkImage(
                        imageUrl: imageUrl,
                        width: size.width * 1.0,
                        height: size.height * 1.0,
                        fit: BoxFit.cover,
                        placeholder:
                            (context, url) =>
                                Container(color: Colors.grey.shade200, child: const Center(child: CircularProgressIndicator(strokeWidth: 2))),
                        errorWidget:
                            (context, url, error) => Container(color: Colors.grey.shade200, child: const Icon(Icons.menu_book, color: Colors.grey)),
                      ),
                    ),
                  ),

                  // Premium icon
                  if (isPremier == true)
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 6, offset: const Offset(0, 2))],
                        ),
                        child: const Icon(Icons.workspace_premium_rounded, color: Color(0xFFD4AF37), size: 22),
                      ),
                    ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // Title
            Text(title, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

            const SizedBox(height: 4),

            // Author
            Text(author, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 13, color: AppColors.grey)),

            const SizedBox(height: 6),

            // Rating
            Row(
              children: [
                const Icon(Icons.star, size: 18, color: AppColors.warning),
                const SizedBox(width: 4),
                Text(rating.toStringAsFixed(1), style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
