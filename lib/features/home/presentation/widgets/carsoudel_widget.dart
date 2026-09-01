import 'package:books_online/core/theme/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselItem {
  final String title;
  final String? subtitle;
  final VoidCallback? onPressed;
  final String? img;

  const CarouselItem({required this.title, this.subtitle, this.onPressed, this.img});
}

class AppCarousel extends StatelessWidget {
  final List<CarouselItem> items;
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
          width: size.width * 1.0,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: AppColors.cream, borderRadius: BorderRadius.circular(16)),
          child: Row(
            children: [
              // CONTENT - LEFT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(item.title, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),

                    if (item.subtitle != null) ...[const SizedBox(height: 8), Text(item.subtitle!, maxLines: 2, overflow: TextOverflow.ellipsis)],

                    const SizedBox(height: 16),

                    InkWell(onTap: item.onPressed, child: Text('Read More', style: TextStyle(color: AppColors.caramel, fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              if (item.img != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(item.img ?? '', width: size.width * 0.3, height: size.height * 1.0, fit: BoxFit.cover),
                ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: height,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: autoPlay,
        autoPlayInterval: autoPlayInterval,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOut,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
