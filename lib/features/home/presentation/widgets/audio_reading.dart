import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/core/utils/format_duration.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/presentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';

class AudioReadingSync extends StatelessWidget {
  final BookModel book;
  final HomeState state;
  final VoidCallback onPlayPause;
  final ValueChanged<double> onSeek;

  const AudioReadingSync({super.key, required this.book, required this.state, required this.onPlayPause, required this.onSeek});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final segments = state.segments;
    final maxSeconds = state.duration.inSeconds > 0 ? state.duration.inSeconds.toDouble() : 1.0;
    final currentSeconds = state.position.inSeconds.toDouble().clamp(0.0, maxSeconds);

    return Column(
      children: [
        Text(book.author ?? "", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children:
                    segments.map((seg) {
                      final isActive = state.position >= seg.start && state.position < seg.end;
                      return TextSpan(
                        text: '${seg.text} ',
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.8,
                          color: isActive ? AppColors.bronze : AppColors.grey,
                          fontWeight: FontWeight.normal,
                          backgroundColor: isActive ? const Color(0xFFA98A28).withOpacity(0.15) : null,
                        ),
                      );
                    }).toList(),
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 18),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(.08), blurRadius: 15, offset: const Offset(0, -5))],
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: state.isAudioLoading ? null : onPlayPause,
                icon: Icon(state.playing ? Icons.pause_rounded : Icons.play_arrow_rounded, size: 36, color: Colors.black),
              ),
              Expanded(
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 4,
                    thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 9),
                    overlayShape: SliderComponentShape.noOverlay,
                  ),
                  child: Slider(
                    min: 0,
                    max: maxSeconds,
                    value: currentSeconds,
                    onChanged: state.isAudioLoading ? null : onSeek,
                    activeColor: const Color(0xFFA98A28),
                    inactiveColor: const Color(0xFFD9D9D9),
                  ),
                ),
              ),
              Text(DurationUtils.format(state.duration - state.position)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          height: size.height * 0.06,
          child: Stack(
            children: [
              Center(
                child: Container(
                  width: size.width * 0.5,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(color: const Color(0xFF202723), borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.chevron_left_rounded, color: Colors.white, size: 32),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: '2', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600)),
                            TextSpan(text: ' / 262', style: TextStyle(color: Color(0xFF888888), fontSize: 16)),
                          ],
                        ),
                      ),
                      const Icon(Icons.chevron_right_rounded, color: Colors.white, size: 32),
                    ],
                  ),
                ),
              ),
              const Positioned(right: 0, top: 20, child: Icon(Icons.menu_book_outlined, color: Color(0xFF999999), size: 27)),
            ],
          ),
        ),
      ],
    );
  }
}
