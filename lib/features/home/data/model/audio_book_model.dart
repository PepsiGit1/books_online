import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_book_model.freezed.dart';
part 'audio_book_model.g.dart';

@freezed
class AudioBookModel with _$AudioBookModel {
  const factory AudioBookModel({
    required int id,
    required String title,
    required String author,
    required String audioUrl,
    required String subtitleUrl,
  }) = _AudioBookModel;

  factory AudioBookModel.fromJson(Map<String, dynamic> json) => _$AudioBookModelFromJson(json);

  static const List<AudioBookModel> mockData = [
    AudioBookModel(
      id: 1,
      title: 'Fox and the Grapes',
      author: 'Aesop',
      audioUrl: 'assets/audio/fables_01_01_aesop_64kb.mp3',
      subtitleUrl: 'assets/subtitles/fables_01_01_aesop_64kb.srt',
    ),
  ];
}
