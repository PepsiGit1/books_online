// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentMetaModel _$PaymentMetaModelFromJson(Map<String, dynamic> json) {
  return _PaymentMetaModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentMetaModel {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  bool get hasPrevPage => throw _privateConstructorUsedError;

  /// Serializes this PaymentMetaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMetaModelCopyWith<PaymentMetaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMetaModelCopyWith<$Res> {
  factory $PaymentMetaModelCopyWith(
    PaymentMetaModel value,
    $Res Function(PaymentMetaModel) then,
  ) = _$PaymentMetaModelCopyWithImpl<$Res, PaymentMetaModel>;
  @useResult
  $Res call({
    int total,
    int page,
    int limit,
    int totalPages,
    bool hasNextPage,
    bool hasPrevPage,
  });
}

/// @nodoc
class _$PaymentMetaModelCopyWithImpl<$Res, $Val extends PaymentMetaModel>
    implements $PaymentMetaModelCopyWith<$Res> {
  _$PaymentMetaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
  }) {
    return _then(
      _value.copyWith(
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            page:
                null == page
                    ? _value.page
                    : page // ignore: cast_nullable_to_non_nullable
                        as int,
            limit:
                null == limit
                    ? _value.limit
                    : limit // ignore: cast_nullable_to_non_nullable
                        as int,
            totalPages:
                null == totalPages
                    ? _value.totalPages
                    : totalPages // ignore: cast_nullable_to_non_nullable
                        as int,
            hasNextPage:
                null == hasNextPage
                    ? _value.hasNextPage
                    : hasNextPage // ignore: cast_nullable_to_non_nullable
                        as bool,
            hasPrevPage:
                null == hasPrevPage
                    ? _value.hasPrevPage
                    : hasPrevPage // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentMetaModelImplCopyWith<$Res>
    implements $PaymentMetaModelCopyWith<$Res> {
  factory _$$PaymentMetaModelImplCopyWith(
    _$PaymentMetaModelImpl value,
    $Res Function(_$PaymentMetaModelImpl) then,
  ) = __$$PaymentMetaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int page,
    int limit,
    int totalPages,
    bool hasNextPage,
    bool hasPrevPage,
  });
}

/// @nodoc
class __$$PaymentMetaModelImplCopyWithImpl<$Res>
    extends _$PaymentMetaModelCopyWithImpl<$Res, _$PaymentMetaModelImpl>
    implements _$$PaymentMetaModelImplCopyWith<$Res> {
  __$$PaymentMetaModelImplCopyWithImpl(
    _$PaymentMetaModelImpl _value,
    $Res Function(_$PaymentMetaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
    Object? totalPages = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
  }) {
    return _then(
      _$PaymentMetaModelImpl(
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        page:
            null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                    as int,
        limit:
            null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                    as int,
        totalPages:
            null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                    as int,
        hasNextPage:
            null == hasNextPage
                ? _value.hasNextPage
                : hasNextPage // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasPrevPage:
            null == hasPrevPage
                ? _value.hasPrevPage
                : hasPrevPage // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMetaModelImpl implements _PaymentMetaModel {
  const _$PaymentMetaModelImpl({
    required this.total,
    required this.page,
    required this.limit,
    required this.totalPages,
    required this.hasNextPage,
    required this.hasPrevPage,
  });

  factory _$PaymentMetaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMetaModelImplFromJson(json);

  @override
  final int total;
  @override
  final int page;
  @override
  final int limit;
  @override
  final int totalPages;
  @override
  final bool hasNextPage;
  @override
  final bool hasPrevPage;

  @override
  String toString() {
    return 'PaymentMetaModel(total: $total, page: $page, limit: $limit, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMetaModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    page,
    limit,
    totalPages,
    hasNextPage,
    hasPrevPage,
  );

  /// Create a copy of PaymentMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMetaModelImplCopyWith<_$PaymentMetaModelImpl> get copyWith =>
      __$$PaymentMetaModelImplCopyWithImpl<_$PaymentMetaModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMetaModelImplToJson(this);
  }
}

abstract class _PaymentMetaModel implements PaymentMetaModel {
  const factory _PaymentMetaModel({
    required final int total,
    required final int page,
    required final int limit,
    required final int totalPages,
    required final bool hasNextPage,
    required final bool hasPrevPage,
  }) = _$PaymentMetaModelImpl;

  factory _PaymentMetaModel.fromJson(Map<String, dynamic> json) =
      _$PaymentMetaModelImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;
  @override
  int get totalPages;
  @override
  bool get hasNextPage;
  @override
  bool get hasPrevPage;

  /// Create a copy of PaymentMetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMetaModelImplCopyWith<_$PaymentMetaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
