// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CarouselModel _$CarouselModelFromJson(Map<String, dynamic> json) {
  return _CarouselModel.fromJson(json);
}

/// @nodoc
mixin _$CarouselModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;

  /// Serializes this CarouselModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarouselModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarouselModelCopyWith<CarouselModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselModelCopyWith<$Res> {
  factory $CarouselModelCopyWith(
    CarouselModel value,
    $Res Function(CarouselModel) then,
  ) = _$CarouselModelCopyWithImpl<$Res, CarouselModel>;
  @useResult
  $Res call({int id, String title, String? author, String? img});
}

/// @nodoc
class _$CarouselModelCopyWithImpl<$Res, $Val extends CarouselModel>
    implements $CarouselModelCopyWith<$Res> {
  _$CarouselModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarouselModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = freezed,
    Object? img = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            author:
                freezed == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as String?,
            img:
                freezed == img
                    ? _value.img
                    : img // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CarouselModelImplCopyWith<$Res>
    implements $CarouselModelCopyWith<$Res> {
  factory _$$CarouselModelImplCopyWith(
    _$CarouselModelImpl value,
    $Res Function(_$CarouselModelImpl) then,
  ) = __$$CarouselModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String? author, String? img});
}

/// @nodoc
class __$$CarouselModelImplCopyWithImpl<$Res>
    extends _$CarouselModelCopyWithImpl<$Res, _$CarouselModelImpl>
    implements _$$CarouselModelImplCopyWith<$Res> {
  __$$CarouselModelImplCopyWithImpl(
    _$CarouselModelImpl _value,
    $Res Function(_$CarouselModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CarouselModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = freezed,
    Object? img = freezed,
  }) {
    return _then(
      _$CarouselModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        author:
            freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as String?,
        img:
            freezed == img
                ? _value.img
                : img // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CarouselModelImpl implements _CarouselModel {
  const _$CarouselModelImpl({
    required this.id,
    required this.title,
    this.author,
    this.img,
  });

  factory _$CarouselModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarouselModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? author;
  @override
  final String? img;

  @override
  String toString() {
    return 'CarouselModel(id: $id, title: $title, author: $author, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarouselModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, author, img);

  /// Create a copy of CarouselModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarouselModelImplCopyWith<_$CarouselModelImpl> get copyWith =>
      __$$CarouselModelImplCopyWithImpl<_$CarouselModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarouselModelImplToJson(this);
  }
}

abstract class _CarouselModel implements CarouselModel {
  const factory _CarouselModel({
    required final int id,
    required final String title,
    final String? author,
    final String? img,
  }) = _$CarouselModelImpl;

  factory _CarouselModel.fromJson(Map<String, dynamic> json) =
      _$CarouselModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get author;
  @override
  String? get img;

  /// Create a copy of CarouselModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarouselModelImplCopyWith<_$CarouselModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
