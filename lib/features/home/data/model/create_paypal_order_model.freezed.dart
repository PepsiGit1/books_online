// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_paypal_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreatePaypalOrderModel _$CreatePaypalOrderModelFromJson(
  Map<String, dynamic> json,
) {
  return _CreatePaypalOrderModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePaypalOrderModel {
  String get value => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get customId => throw _privateConstructorUsedError;

  /// Serializes this CreatePaypalOrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatePaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePaypalOrderModelCopyWith<CreatePaypalOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaypalOrderModelCopyWith<$Res> {
  factory $CreatePaypalOrderModelCopyWith(
    CreatePaypalOrderModel value,
    $Res Function(CreatePaypalOrderModel) then,
  ) = _$CreatePaypalOrderModelCopyWithImpl<$Res, CreatePaypalOrderModel>;
  @useResult
  $Res call({
    String value,
    String referenceId,
    String description,
    String customId,
  });
}

/// @nodoc
class _$CreatePaypalOrderModelCopyWithImpl<
  $Res,
  $Val extends CreatePaypalOrderModel
>
    implements $CreatePaypalOrderModelCopyWith<$Res> {
  _$CreatePaypalOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? referenceId = null,
    Object? description = null,
    Object? customId = null,
  }) {
    return _then(
      _value.copyWith(
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as String,
            referenceId:
                null == referenceId
                    ? _value.referenceId
                    : referenceId // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            customId:
                null == customId
                    ? _value.customId
                    : customId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreatePaypalOrderModelImplCopyWith<$Res>
    implements $CreatePaypalOrderModelCopyWith<$Res> {
  factory _$$CreatePaypalOrderModelImplCopyWith(
    _$CreatePaypalOrderModelImpl value,
    $Res Function(_$CreatePaypalOrderModelImpl) then,
  ) = __$$CreatePaypalOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String value,
    String referenceId,
    String description,
    String customId,
  });
}

/// @nodoc
class __$$CreatePaypalOrderModelImplCopyWithImpl<$Res>
    extends
        _$CreatePaypalOrderModelCopyWithImpl<$Res, _$CreatePaypalOrderModelImpl>
    implements _$$CreatePaypalOrderModelImplCopyWith<$Res> {
  __$$CreatePaypalOrderModelImplCopyWithImpl(
    _$CreatePaypalOrderModelImpl _value,
    $Res Function(_$CreatePaypalOrderModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreatePaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? referenceId = null,
    Object? description = null,
    Object? customId = null,
  }) {
    return _then(
      _$CreatePaypalOrderModelImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as String,
        referenceId:
            null == referenceId
                ? _value.referenceId
                : referenceId // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        customId:
            null == customId
                ? _value.customId
                : customId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePaypalOrderModelImpl implements _CreatePaypalOrderModel {
  const _$CreatePaypalOrderModelImpl({
    required this.value,
    required this.referenceId,
    required this.description,
    required this.customId,
  });

  factory _$CreatePaypalOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePaypalOrderModelImplFromJson(json);

  @override
  final String value;
  @override
  final String referenceId;
  @override
  final String description;
  @override
  final String customId;

  @override
  String toString() {
    return 'CreatePaypalOrderModel(value: $value, referenceId: $referenceId, description: $description, customId: $customId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePaypalOrderModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.customId, customId) ||
                other.customId == customId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, value, referenceId, description, customId);

  /// Create a copy of CreatePaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePaypalOrderModelImplCopyWith<_$CreatePaypalOrderModelImpl>
  get copyWith =>
      __$$CreatePaypalOrderModelImplCopyWithImpl<_$CreatePaypalOrderModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePaypalOrderModelImplToJson(this);
  }
}

abstract class _CreatePaypalOrderModel implements CreatePaypalOrderModel {
  const factory _CreatePaypalOrderModel({
    required final String value,
    required final String referenceId,
    required final String description,
    required final String customId,
  }) = _$CreatePaypalOrderModelImpl;

  factory _CreatePaypalOrderModel.fromJson(Map<String, dynamic> json) =
      _$CreatePaypalOrderModelImpl.fromJson;

  @override
  String get value;
  @override
  String get referenceId;
  @override
  String get description;
  @override
  String get customId;

  /// Create a copy of CreatePaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePaypalOrderModelImplCopyWith<_$CreatePaypalOrderModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
