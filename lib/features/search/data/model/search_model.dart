import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
class SearchModel with _$SearchModel {
  const factory SearchModel({
    required int id,
    required String title,
    String? author,
    String? coverImageUrl,
    double? rating,
    double? progress,
    required int categoryId,
    @Default(false) bool isPremium,
    @Default(false) bool isSaved,
  }) = _SearchModel;

  factory SearchModel.fromJson(Map<String, dynamic> json) => _$SearchModelFromJson(json);
}
