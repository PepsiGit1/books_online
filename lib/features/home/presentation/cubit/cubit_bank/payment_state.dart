part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState({
    @Default(Status.initial) Status status,
    @Default('') String mess,
    PaymentModel? payment,
    @Default('') String selectedBank,
    @Default(false) bool isLoading,
    @Default(PaymentStatus.pending) PaymentStatus paymentStatus,
  }) = _PaymentState;
}
