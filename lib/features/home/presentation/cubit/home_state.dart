part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({@Default(Status.initial) Status status, @Default('') String mess, @Default(0) int currentIndex}) = _HomeState;
}
