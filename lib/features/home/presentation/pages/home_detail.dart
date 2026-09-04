import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/features/home/data/model/audio_book_model.dart';
import 'package:books_online/features/home/presentation/cubit/home_cubit.dart';
import 'package:books_online/features/home/presentation/widgets/audio_reading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeDetailPage extends StatelessWidget {
  final int id;

  const HomeDetailPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: AppColors.creamLight, actions: [IconButton(onPressed: () => {}, icon: Icon(Icons.share))]),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.4,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            color: AppColors.creamLight,
                            height: size.height * 0.35,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 60,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: size.width * 0.3,
                                        height: size.height * 0.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          boxShadow: [BoxShadow(color: Colors.black.withOpacity(.18), blurRadius: 15, offset: const Offset(0, 8))],
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(4),
                                          child: Image.network(
                                            'https://m.media-amazon.com/images/I/71si36sM1BL._AC_UF1000,1000_QL80_.jpg',
                                            fit: BoxFit.cover,
                                            errorBuilder: (_, __, ___) {
                                              return Container(color: Colors.grey.shade300, child: const Icon(Icons.book, size: 50));
                                            },
                                          ),
                                        ),
                                      ),

                                      const SizedBox(height: 18),

                                      const Text(
                                        'The Psychology Of Money',
                                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFF111111)),
                                      ),

                                      const SizedBox(height: 5),

                                      const Text('Morgan Housel', style: TextStyle(fontSize: 15, color: Color(0xFF777777))),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Fixed stats
                          Positioned(
                            left: 20,
                            right: 20,
                            top: size.height * 0.3,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10, offset: const Offset(0, 2))],
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    _StatItem(value: '4.4', label: 'Rating'),
                                    _StatItem(value: '262', label: 'Number Of Page'),
                                    _StatItem(value: 'Eng', label: 'Language'),
                                    _StatItem(value: '2h14m', label: 'Audio'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Positioned(left: 0, right: 0, top: size.height * 0.4, bottom: 0, child: AudioReadingSync(book: AudioBookModel.mockData[0])),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String value;
  final String label;

  const _StatItem({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.bronze)),
        const SizedBox(height: 8),
        Text(label, textAlign: TextAlign.center, style: const TextStyle(fontSize: 12, color: AppColors.grey)),
      ],
    );
  }
}
