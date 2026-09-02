import 'package:freezed_annotation/freezed_annotation.dart';

part 'carousel_model.freezed.dart';
part 'carousel_model.g.dart';

@freezed
class CarouselModel with _$CarouselModel {
  const factory CarouselModel({required int id, required String title, String? author, String? img}) = _CarouselModel;

  factory CarouselModel.fromJson(Map<String, dynamic> json) => _$CarouselModelFromJson(json);
  static const List<CarouselModel> mockCarouselData = [
    CarouselModel(
      id: 1,
      title: "The Elephant's Apology",
      author: "Alice Talwin Morris",
      img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPp9SJtD6e1YaHq16m-BrtNSMd7gKc5dxJakNnaKb8Jg&s=10",
    ),
    CarouselModel(
      id: 2,
      title: "Think and Grow Rich",
      author: "Napoleon Hill",
      img: "https://d3ez21yr3b8eu3.cloudfront.net/images/coverImages/large/8c4688c2-f93c-442c-ab44-234322ed573a.jpg",
    ),
    CarouselModel(id: 3, title: "The Psychology of Money", author: "Morgan Housel", img: "https://cdnattic.atticbooks.co.ke/img/W844901.jpg"),
  ];
}
