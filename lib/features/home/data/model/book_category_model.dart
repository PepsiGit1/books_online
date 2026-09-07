import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_category_model.freezed.dart';
part 'book_category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({required int id, required String name}) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}
