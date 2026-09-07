part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Status.initial) Status status,
    @Default('') String mess,

    @Default(0) int currentIndex,

    // Books
    @Default([]) List<BookModel> allBooks,
    @Default([]) List<BookModel> book,

    // Home
    @Default([]) List<CarouselModel> carousels,

    // Categories
    @Default([]) List<CategoryModel> categories,
    @Default(0) int selectedCategoryId,

    // Audio
    BookModel? audioBook,
    ChapterModel? selectedChapter,
    @Default(Duration.zero) Duration position,
    @Default(Duration.zero) Duration duration,
    @Default(false) bool playing,
    @Default(false) bool isAudioLoading,
    @Default([]) List<TextSegment> segments,

    // Payment
    @Default(false) bool isPurchasing,
    @Default(false) bool purchaseSuccess,
    String? purchaseProductId,
  }) = _HomeState;
}
