import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/data/model/chapter_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    required int id,
    required String title,
    String? author,
    required String productId,
    String? coverImageUrl,
    double? rating,
    double? progress,
    required int categoryId,

    @Default(false) bool isPremium,

    @Default(false) bool isSaved,

    @Default(0.0) double price,

    CategoryModel? category,

    @Default([]) List<ChapterModel> chapters,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);
}
