// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentHistoryModel _$PaymentHistoryModelFromJson(Map<String, dynamic> json) {
  return _PaymentHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentHistoryModel {
  String get transactionId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Serializes this PaymentHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentHistoryModelCopyWith<PaymentHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentHistoryModelCopyWith<$Res> {
  factory $PaymentHistoryModelCopyWith(
    PaymentHistoryModel value,
    $Res Function(PaymentHistoryModel) then,
  ) = _$PaymentHistoryModelCopyWithImpl<$Res, PaymentHistoryModel>;
  @useResult
  $Res call({
    String transactionId,
    String status,
    String message,
    String paymentMethod,
    double amount,
    DateTime createdAt,
    DateTime updatedAt,
    String userId,
    int id,
  });
}

/// @nodoc
class _$PaymentHistoryModelCopyWithImpl<$Res, $Val extends PaymentHistoryModel>
    implements $PaymentHistoryModelCopyWith<$Res> {
  _$PaymentHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? status = null,
    Object? message = null,
    Object? paymentMethod = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? id = null,
  }) {
    return _then(
      _value.copyWith(
            transactionId:
                null == transactionId
                    ? _value.transactionId
                    : transactionId // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            paymentMethod:
                null == paymentMethod
                    ? _value.paymentMethod
                    : paymentMethod // ignore: cast_nullable_to_non_nullable
                        as String,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as double,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentHistoryModelImplCopyWith<$Res>
    implements $PaymentHistoryModelCopyWith<$Res> {
  factory _$$PaymentHistoryModelImplCopyWith(
    _$PaymentHistoryModelImpl value,
    $Res Function(_$PaymentHistoryModelImpl) then,
  ) = __$$PaymentHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String transactionId,
    String status,
    String message,
    String paymentMethod,
    double amount,
    DateTime createdAt,
    DateTime updatedAt,
    String userId,
    int id,
  });
}

/// @nodoc
class __$$PaymentHistoryModelImplCopyWithImpl<$Res>
    extends _$PaymentHistoryModelCopyWithImpl<$Res, _$PaymentHistoryModelImpl>
    implements _$$PaymentHistoryModelImplCopyWith<$Res> {
  __$$PaymentHistoryModelImplCopyWithImpl(
    _$PaymentHistoryModelImpl _value,
    $Res Function(_$PaymentHistoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? status = null,
    Object? message = null,
    Object? paymentMethod = null,
    Object? amount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? id = null,
  }) {
    return _then(
      _$PaymentHistoryModelImpl(
        transactionId:
            null == transactionId
                ? _value.transactionId
                : transactionId // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        paymentMethod:
            null == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                    as String,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as double,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentHistoryModelImpl implements _PaymentHistoryModel {
  const _$PaymentHistoryModelImpl({
    required this.transactionId,
    required this.status,
    required this.message,
    required this.paymentMethod,
    required this.amount,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    required this.id,
  });

  factory _$PaymentHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentHistoryModelImplFromJson(json);

  @override
  final String transactionId;
  @override
  final String status;
  @override
  final String message;
  @override
  final String paymentMethod;
  @override
  final double amount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String userId;
  @override
  final int id;

  @override
  String toString() {
    return 'PaymentHistoryModel(transactionId: $transactionId, status: $status, message: $message, paymentMethod: $paymentMethod, amount: $amount, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentHistoryModelImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    transactionId,
    status,
    message,
    paymentMethod,
    amount,
    createdAt,
    updatedAt,
    userId,
    id,
  );

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentHistoryModelImplCopyWith<_$PaymentHistoryModelImpl> get copyWith =>
      __$$PaymentHistoryModelImplCopyWithImpl<_$PaymentHistoryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentHistoryModelImplToJson(this);
  }
}

abstract class _PaymentHistoryModel implements PaymentHistoryModel {
  const factory _PaymentHistoryModel({
    required final String transactionId,
    required final String status,
    required final String message,
    required final String paymentMethod,
    required final double amount,
    required final DateTime createdAt,
    required final DateTime updatedAt,
    required final String userId,
    required final int id,
  }) = _$PaymentHistoryModelImpl;

  factory _PaymentHistoryModel.fromJson(Map<String, dynamic> json) =
      _$PaymentHistoryModelImpl.fromJson;

  @override
  String get transactionId;
  @override
  String get status;
  @override
  String get message;
  @override
  String get paymentMethod;
  @override
  double get amount;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get userId;
  @override
  int get id;

  /// Create a copy of PaymentHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentHistoryModelImplCopyWith<_$PaymentHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
