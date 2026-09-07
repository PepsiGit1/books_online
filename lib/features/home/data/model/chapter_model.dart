import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_model.freezed.dart';
part 'chapter_model.g.dart';

@freezed
class ChapterModel with _$ChapterModel {
  const factory ChapterModel({
    required int id,
    required int bookId,
    required int chapterNo,
    required String title,
    required String audioUrl,
    required String subtitleUrl,
  }) = _ChapterModel;

  factory ChapterModel.fromJson(Map<String, dynamic> json) => _$ChapterModelFromJson(json);
}
