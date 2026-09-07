part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(Status.initial) Status status,
    @Default('') String mess,
    @Default([]) List<BookModel> book,
    @Default([]) List<BookModel> searchResults,
    @Default(false) bool isSearching,
    @Default(1) int selectedCategoryId,
    @Default([]) List<CategoryModel> categories,
  }) = _SearchState;
}
