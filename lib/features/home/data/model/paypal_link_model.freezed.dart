// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paypal_link_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaypalLinkModel _$PaypalLinkModelFromJson(Map<String, dynamic> json) {
  return _PaypalLinkModel.fromJson(json);
}

/// @nodoc
mixin _$PaypalLinkModel {
  String get href => throw _privateConstructorUsedError;
  String get rel => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;

  /// Serializes this PaypalLinkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaypalLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaypalLinkModelCopyWith<PaypalLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaypalLinkModelCopyWith<$Res> {
  factory $PaypalLinkModelCopyWith(
    PaypalLinkModel value,
    $Res Function(PaypalLinkModel) then,
  ) = _$PaypalLinkModelCopyWithImpl<$Res, PaypalLinkModel>;
  @useResult
  $Res call({String href, String rel, String method});
}

/// @nodoc
class _$PaypalLinkModelCopyWithImpl<$Res, $Val extends PaypalLinkModel>
    implements $PaypalLinkModelCopyWith<$Res> {
  _$PaypalLinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaypalLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? href = null, Object? rel = null, Object? method = null}) {
    return _then(
      _value.copyWith(
            href:
                null == href
                    ? _value.href
                    : href // ignore: cast_nullable_to_non_nullable
                        as String,
            rel:
                null == rel
                    ? _value.rel
                    : rel // ignore: cast_nullable_to_non_nullable
                        as String,
            method:
                null == method
                    ? _value.method
                    : method // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaypalLinkModelImplCopyWith<$Res>
    implements $PaypalLinkModelCopyWith<$Res> {
  factory _$$PaypalLinkModelImplCopyWith(
    _$PaypalLinkModelImpl value,
    $Res Function(_$PaypalLinkModelImpl) then,
  ) = __$$PaypalLinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String href, String rel, String method});
}

/// @nodoc
class __$$PaypalLinkModelImplCopyWithImpl<$Res>
    extends _$PaypalLinkModelCopyWithImpl<$Res, _$PaypalLinkModelImpl>
    implements _$$PaypalLinkModelImplCopyWith<$Res> {
  __$$PaypalLinkModelImplCopyWithImpl(
    _$PaypalLinkModelImpl _value,
    $Res Function(_$PaypalLinkModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaypalLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? href = null, Object? rel = null, Object? method = null}) {
    return _then(
      _$PaypalLinkModelImpl(
        href:
            null == href
                ? _value.href
                : href // ignore: cast_nullable_to_non_nullable
                    as String,
        rel:
            null == rel
                ? _value.rel
                : rel // ignore: cast_nullable_to_non_nullable
                    as String,
        method:
            null == method
                ? _value.method
                : method // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaypalLinkModelImpl implements _PaypalLinkModel {
  const _$PaypalLinkModelImpl({
    required this.href,
    required this.rel,
    required this.method,
  });

  factory _$PaypalLinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaypalLinkModelImplFromJson(json);

  @override
  final String href;
  @override
  final String rel;
  @override
  final String method;

  @override
  String toString() {
    return 'PaypalLinkModel(href: $href, rel: $rel, method: $method)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaypalLinkModelImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.rel, rel) || other.rel == rel) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, href, rel, method);

  /// Create a copy of PaypalLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaypalLinkModelImplCopyWith<_$PaypalLinkModelImpl> get copyWith =>
      __$$PaypalLinkModelImplCopyWithImpl<_$PaypalLinkModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaypalLinkModelImplToJson(this);
  }
}

abstract class _PaypalLinkModel implements PaypalLinkModel {
  const factory _PaypalLinkModel({
    required final String href,
    required final String rel,
    required final String method,
  }) = _$PaypalLinkModelImpl;

  factory _PaypalLinkModel.fromJson(Map<String, dynamic> json) =
      _$PaypalLinkModelImpl.fromJson;

  @override
  String get href;
  @override
  String get rel;
  @override
  String get method;

  /// Create a copy of PaypalLinkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaypalLinkModelImplCopyWith<_$PaypalLinkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
