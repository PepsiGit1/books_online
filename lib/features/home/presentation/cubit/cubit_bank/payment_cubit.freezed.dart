// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PaymentState {
  Status get status => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError;
  PaymentModel? get payment => throw _privateConstructorUsedError;
  String get selectedBank => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
    PaymentState value,
    $Res Function(PaymentState) then,
  ) = _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call({
    Status status,
    String mess,
    PaymentModel? payment,
    String selectedBank,
    bool isLoading,
    PaymentStatus paymentStatus,
  });

  $PaymentModelCopyWith<$Res>? get payment;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mess = null,
    Object? payment = freezed,
    Object? selectedBank = null,
    Object? isLoading = null,
    Object? paymentStatus = null,
  }) {
    return _then(
      _value.copyWith(
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as Status,
            mess:
                null == mess
                    ? _value.mess
                    : mess // ignore: cast_nullable_to_non_nullable
                        as String,
            payment:
                freezed == payment
                    ? _value.payment
                    : payment // ignore: cast_nullable_to_non_nullable
                        as PaymentModel?,
            selectedBank:
                null == selectedBank
                    ? _value.selectedBank
                    : selectedBank // ignore: cast_nullable_to_non_nullable
                        as String,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            paymentStatus:
                null == paymentStatus
                    ? _value.paymentStatus
                    : paymentStatus // ignore: cast_nullable_to_non_nullable
                        as PaymentStatus,
          )
          as $Val,
    );
  }

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentModelCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $PaymentModelCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
    _$PaymentStateImpl value,
    $Res Function(_$PaymentStateImpl) then,
  ) = __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    String mess,
    PaymentModel? payment,
    String selectedBank,
    bool isLoading,
    PaymentStatus paymentStatus,
  });

  @override
  $PaymentModelCopyWith<$Res>? get payment;
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
    _$PaymentStateImpl _value,
    $Res Function(_$PaymentStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mess = null,
    Object? payment = freezed,
    Object? selectedBank = null,
    Object? isLoading = null,
    Object? paymentStatus = null,
  }) {
    return _then(
      _$PaymentStateImpl(
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as Status,
        mess:
            null == mess
                ? _value.mess
                : mess // ignore: cast_nullable_to_non_nullable
                    as String,
        payment:
            freezed == payment
                ? _value.payment
                : payment // ignore: cast_nullable_to_non_nullable
                    as PaymentModel?,
        selectedBank:
            null == selectedBank
                ? _value.selectedBank
                : selectedBank // ignore: cast_nullable_to_non_nullable
                    as String,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        paymentStatus:
            null == paymentStatus
                ? _value.paymentStatus
                : paymentStatus // ignore: cast_nullable_to_non_nullable
                    as PaymentStatus,
      ),
    );
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  const _$PaymentStateImpl({
    this.status = Status.initial,
    this.mess = '',
    this.payment,
    this.selectedBank = '',
    this.isLoading = false,
    this.paymentStatus = PaymentStatus.pending,
  });

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final String mess;
  @override
  final PaymentModel? payment;
  @override
  @JsonKey()
  final String selectedBank;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;

  @override
  String toString() {
    return 'PaymentState(status: $status, mess: $mess, payment: $payment, selectedBank: $selectedBank, isLoading: $isLoading, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.selectedBank, selectedBank) ||
                other.selectedBank == selectedBank) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    mess,
    payment,
    selectedBank,
    isLoading,
    paymentStatus,
  );

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  const factory _PaymentState({
    final Status status,
    final String mess,
    final PaymentModel? payment,
    final String selectedBank,
    final bool isLoading,
    final PaymentStatus paymentStatus,
  }) = _$PaymentStateImpl;

  @override
  Status get status;
  @override
  String get mess;
  @override
  PaymentModel? get payment;
  @override
  String get selectedBank;
  @override
  bool get isLoading;
  @override
  PaymentStatus get paymentStatus;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
