// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paypal_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaypalOrderModel _$PaypalOrderModelFromJson(Map<String, dynamic> json) {
  return _PaypalOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PaypalOrderModel {
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<PaypalLinkModel> get links => throw _privateConstructorUsedError;

  /// Serializes this PaypalOrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaypalOrderModelCopyWith<PaypalOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaypalOrderModelCopyWith<$Res> {
  factory $PaypalOrderModelCopyWith(
    PaypalOrderModel value,
    $Res Function(PaypalOrderModel) then,
  ) = _$PaypalOrderModelCopyWithImpl<$Res, PaypalOrderModel>;
  @useResult
  $Res call({String id, String status, List<PaypalLinkModel> links});
}

/// @nodoc
class _$PaypalOrderModelCopyWithImpl<$Res, $Val extends PaypalOrderModel>
    implements $PaypalOrderModelCopyWith<$Res> {
  _$PaypalOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? status = null, Object? links = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            links:
                null == links
                    ? _value.links
                    : links // ignore: cast_nullable_to_non_nullable
                        as List<PaypalLinkModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaypalOrderModelImplCopyWith<$Res>
    implements $PaypalOrderModelCopyWith<$Res> {
  factory _$$PaypalOrderModelImplCopyWith(
    _$PaypalOrderModelImpl value,
    $Res Function(_$PaypalOrderModelImpl) then,
  ) = __$$PaypalOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String status, List<PaypalLinkModel> links});
}

/// @nodoc
class __$$PaypalOrderModelImplCopyWithImpl<$Res>
    extends _$PaypalOrderModelCopyWithImpl<$Res, _$PaypalOrderModelImpl>
    implements _$$PaypalOrderModelImplCopyWith<$Res> {
  __$$PaypalOrderModelImplCopyWithImpl(
    _$PaypalOrderModelImpl _value,
    $Res Function(_$PaypalOrderModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? status = null, Object? links = null}) {
    return _then(
      _$PaypalOrderModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        links:
            null == links
                ? _value._links
                : links // ignore: cast_nullable_to_non_nullable
                    as List<PaypalLinkModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaypalOrderModelImpl implements _PaypalOrderModel {
  const _$PaypalOrderModelImpl({
    required this.id,
    required this.status,
    required final List<PaypalLinkModel> links,
  }) : _links = links;

  factory _$PaypalOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaypalOrderModelImplFromJson(json);

  @override
  final String id;
  @override
  final String status;
  final List<PaypalLinkModel> _links;
  @override
  List<PaypalLinkModel> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  String toString() {
    return 'PaypalOrderModel(id: $id, status: $status, links: $links)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaypalOrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    status,
    const DeepCollectionEquality().hash(_links),
  );

  /// Create a copy of PaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaypalOrderModelImplCopyWith<_$PaypalOrderModelImpl> get copyWith =>
      __$$PaypalOrderModelImplCopyWithImpl<_$PaypalOrderModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaypalOrderModelImplToJson(this);
  }
}

abstract class _PaypalOrderModel implements PaypalOrderModel {
  const factory _PaypalOrderModel({
    required final String id,
    required final String status,
    required final List<PaypalLinkModel> links,
  }) = _$PaypalOrderModelImpl;

  factory _PaypalOrderModel.fromJson(Map<String, dynamic> json) =
      _$PaypalOrderModelImpl.fromJson;

  @override
  String get id;
  @override
  String get status;
  @override
  List<PaypalLinkModel> get links;

  /// Create a copy of PaypalOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaypalOrderModelImplCopyWith<_$PaypalOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
