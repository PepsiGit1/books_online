import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/features/home/data/model/carousel_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AppCarousel extends StatelessWidget {
  final List<CarouselModel> items;
  final double height;
  final bool autoPlay;
  final Duration autoPlayInterval;

  const AppCarousel({super.key, required this.items, this.height = 200, this.autoPlay = true, this.autoPlayInterval = const Duration(seconds: 3)});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (context, index, realIndex) {
        final item = items[index];

        return Container(
          padding: const EdgeInsets.only(left: 16, right: 0, top: 0, bottom: 0),
          decoration: BoxDecoration(color: AppColors.cream, borderRadius: BorderRadius.circular(16)),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(item.title, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),

                    if (item.author != null) ...[const SizedBox(height: 8), Text(item.author!, maxLines: 2, overflow: TextOverflow.ellipsis)],

                    const SizedBox(height: 16),

                    InkWell(
                      onTap: () {
                        // Navigate to book detail
                        debugPrint('Book ID: ${item.id}');
                      },
                      child: Text('Read More', style: TextStyle(color: AppColors.caramel, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 16),

              if (item.img != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    imageUrl: item.img!,
                    width: size.width * 0.3,
                    height: size.height * 1.0,
                    fit: BoxFit.cover,

                    placeholder:
                        (context, url) => Container(
                          width: size.width * 0.3,
                          height: size.height * 1.0,
                          color: Colors.grey.shade200,
                          child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
                        ),

                    errorWidget:
                        (context, url, error) => Container(
                          width: size.width * 0.3,
                          height: size.height * 1.0,
                          color: Colors.grey.shade200,
                          child: const Icon(Icons.menu_book, color: Colors.grey),
                        ),
                  ),
                ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: height,
        viewportFraction: 1.0,
        autoPlay: autoPlay,
        autoPlayInterval: autoPlayInterval,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOut,
        enlargeCenterPage: false,
      ),
    );
  }
}
