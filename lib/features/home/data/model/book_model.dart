import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
class BookModel with _$BookModel {
  const factory BookModel({
    required int id,
    required String title,
    String? author,
    String? coverImageUrl,
    double? rating,
    double? progress,
    required int categoryId,
    @Default(false) bool isPremium,
    @Default(false) bool isSaved,
  }) = _BookModel;

  factory BookModel.fromJson(Map<String, dynamic> json) => _$BookModelFromJson(json);

  static const List<BookModel> mockData = [
    BookModel(
      id: 1,
      title: 'Think and Grow Rich',
      author: 'Napoleon Hill',
      coverImageUrl: 'https://kitabcorner.in/wp-content/uploads/2024/02/think-and-grow-rich-book-online-at-Kitab-Corner-1.webp',
      rating: 4.8,
      progress: 0.1,
      categoryId: 7,
      isPremium: true,
      isSaved: true,
    ),
    BookModel(
      id: 2,
      title: 'Atomic Habits',
      author: 'James Clear',
      coverImageUrl: 'https://m.media-amazon.com/images/I/81F90H7hnML._SL1500_.jpg',
      rating: 4.9,
      progress: 0.45,
      categoryId: 8,
      isPremium: false,
      isSaved: false,
    ),
    BookModel(
      id: 3,
      title: 'The Psychology of Money',
      author: 'Morgan Housel',
      coverImageUrl: 'https://m.media-amazon.com/images/I/71g2ednj0JL._SL1500_.jpg',
      rating: 4.7,
      progress: 0.75,
      categoryId: 7,
      isPremium: false,
      isSaved: false,
    ),
    BookModel(
      id: 4,
      title: 'Rich Dad Poor Dad',
      author: 'Robert T. Kiyosaki',
      coverImageUrl: 'https://m.media-amazon.com/images/I/81bsw6fnUiL._SL1500_.jpg',
      rating: 4.6,
      progress: 0.25,
      categoryId: 7,
      isPremium: false,
      isSaved: false,
    ),
    BookModel(
      id: 5,
      title: 'The 7 Habits of Highly Effective People',
      author: 'Stephen R. Covey',
      coverImageUrl: 'https://m.media-amazon.com/images/I/71rmHeQeuRL._AC_UF1000,1000_QL80_.jpg',
      rating: 4.6,
      progress: 0.25,
      categoryId: 7,
      isPremium: false,
      isSaved: false,
    ),
    BookModel(
      id: 6,
      title: 'The Time Machine',
      author: 'H. G. Wells',
      coverImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnrXMipeMxqMh5_gxhfQDCb-GRI86vZGZcVqIkMs67NqAE7Atu3_bEs5pt&s=10',
      rating: 4.5,
      progress: 0.6,
      categoryId: 2,
      isPremium: true,
      isSaved: true,
    ),
  ];
}
