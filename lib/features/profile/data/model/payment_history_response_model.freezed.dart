// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_history_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentHistoryResponseModel _$PaymentHistoryResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _PaymentHistoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentHistoryResponseModel {
  List<PaymentHistoryModel> get data => throw _privateConstructorUsedError;
  PaymentMetaModel get meta => throw _privateConstructorUsedError;

  /// Serializes this PaymentHistoryResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentHistoryResponseModelCopyWith<PaymentHistoryResponseModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentHistoryResponseModelCopyWith<$Res> {
  factory $PaymentHistoryResponseModelCopyWith(
    PaymentHistoryResponseModel value,
    $Res Function(PaymentHistoryResponseModel) then,
  ) =
      _$PaymentHistoryResponseModelCopyWithImpl<
        $Res,
        PaymentHistoryResponseModel
      >;
  @useResult
  $Res call({List<PaymentHistoryModel> data, PaymentMetaModel meta});

  $PaymentMetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$PaymentHistoryResponseModelCopyWithImpl<
  $Res,
  $Val extends PaymentHistoryResponseModel
>
    implements $PaymentHistoryResponseModelCopyWith<$Res> {
  _$PaymentHistoryResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? meta = null}) {
    return _then(
      _value.copyWith(
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<PaymentHistoryModel>,
            meta:
                null == meta
                    ? _value.meta
                    : meta // ignore: cast_nullable_to_non_nullable
                        as PaymentMetaModel,
          )
          as $Val,
    );
  }

  /// Create a copy of PaymentHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentMetaModelCopyWith<$Res> get meta {
    return $PaymentMetaModelCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentHistoryResponseModelImplCopyWith<$Res>
    implements $PaymentHistoryResponseModelCopyWith<$Res> {
  factory _$$PaymentHistoryResponseModelImplCopyWith(
    _$PaymentHistoryResponseModelImpl value,
    $Res Function(_$PaymentHistoryResponseModelImpl) then,
  ) = __$$PaymentHistoryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PaymentHistoryModel> data, PaymentMetaModel meta});

  @override
  $PaymentMetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$$PaymentHistoryResponseModelImplCopyWithImpl<$Res>
    extends
        _$PaymentHistoryResponseModelCopyWithImpl<
          $Res,
          _$PaymentHistoryResponseModelImpl
        >
    implements _$$PaymentHistoryResponseModelImplCopyWith<$Res> {
  __$$PaymentHistoryResponseModelImplCopyWithImpl(
    _$PaymentHistoryResponseModelImpl _value,
    $Res Function(_$PaymentHistoryResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? data = null, Object? meta = null}) {
    return _then(
      _$PaymentHistoryResponseModelImpl(
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<PaymentHistoryModel>,
        meta:
            null == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                    as PaymentMetaModel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentHistoryResponseModelImpl
    implements _PaymentHistoryResponseModel {
  const _$PaymentHistoryResponseModelImpl({
    required final List<PaymentHistoryModel> data,
    required this.meta,
  }) : _data = data;

  factory _$PaymentHistoryResponseModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$PaymentHistoryResponseModelImplFromJson(json);

  final List<PaymentHistoryModel> _data;
  @override
  List<PaymentHistoryModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PaymentMetaModel meta;

  @override
  String toString() {
    return 'PaymentHistoryResponseModel(data: $data, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentHistoryResponseModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_data),
    meta,
  );

  /// Create a copy of PaymentHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentHistoryResponseModelImplCopyWith<_$PaymentHistoryResponseModelImpl>
  get copyWith => __$$PaymentHistoryResponseModelImplCopyWithImpl<
    _$PaymentHistoryResponseModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentHistoryResponseModelImplToJson(this);
  }
}

abstract class _PaymentHistoryResponseModel
    implements PaymentHistoryResponseModel {
  const factory _PaymentHistoryResponseModel({
    required final List<PaymentHistoryModel> data,
    required final PaymentMetaModel meta,
  }) = _$PaymentHistoryResponseModelImpl;

  factory _PaymentHistoryResponseModel.fromJson(Map<String, dynamic> json) =
      _$PaymentHistoryResponseModelImpl.fromJson;

  @override
  List<PaymentHistoryModel> get data;
  @override
  PaymentMetaModel get meta;

  /// Create a copy of PaymentHistoryResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentHistoryResponseModelImplCopyWith<_$PaymentHistoryResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
