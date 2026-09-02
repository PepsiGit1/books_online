import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_category_model.freezed.dart';
part 'book_category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({required int id, required String name}) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
  static const List<CategoryModel> mockData = [
    CategoryModel(id: 1, name: 'All'),
    CategoryModel(id: 2, name: 'Fiction'),
    CategoryModel(id: 3, name: 'Romance'),
    CategoryModel(id: 4, name: 'Science'),
    CategoryModel(id: 5, name: 'History'),
    CategoryModel(id: 6, name: 'Technology'),
    CategoryModel(id: 7, name: 'Business'),
    CategoryModel(id: 8, name: 'Self Development'),
  ];
}
