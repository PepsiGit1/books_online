part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(Status.initial) Status status,
    @Default('') String mess,
    @Default(0) int currentIndex,
    @Default([]) List<BookModel> allBooks,
    @Default([]) List<BookModel> book,
    @Default([]) List<CarouselModel> carousels,
    @Default([]) List<CategoryModel> categories,
    @Default(0) int selectedCategoryId,
    @Default(Duration.zero) Duration position,
    @Default(Duration.zero) Duration duration,
    @Default(false) bool playing,
    @Default(false) bool isAudioLoading,
    @Default([]) List<TextSegment> segments,
    AudioBookModel? audioBook,
  }) = _HomeState;
}
