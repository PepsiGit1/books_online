part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(Status.initial) Status status,
    @Default('') String mess,
    UserModel? user,
    @Default(false) bool isLoggingOut,
    @Default(false) bool logoutSuccess,
    @Default(false) bool isChangingPassword,
    @Default(false) bool changePasswordSuccess,
    @Default([]) List<PaymentHistoryModel> payments,
    PaymentMetaModel? paymentMeta,
  }) = _ProfileState;
}
