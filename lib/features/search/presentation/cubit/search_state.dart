part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({@Default(Status.initial) Status status, @Default('') String mess, @Default([]) List<SearchModel> book}) = _SearchState;
}
