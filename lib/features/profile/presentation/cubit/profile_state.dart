part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(Status.initial) Status status,
    @Default(Status.initial) Status updateStatus,
    @Default('') String mess,
    UserModel? user,
    String? selectedImagePath,
    @Default('') String name,
    @Default(false) bool isLoggingOut,
    @Default(false) bool logoutSuccess,
    @Default(false) bool isChangingPassword,
    @Default(false) bool changePasswordSuccess,
    @Default([]) List<PaymentHistoryModel> payments,
    PaymentMetaModel? paymentMeta,
    @Default(false) bool isUpdating,
    @Default(Status.initial) Status libraryStatus,
    @Default([]) List<BookModel> myLibrary,
  }) = _ProfileState;
}
