// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChapterModel _$ChapterModelFromJson(Map<String, dynamic> json) {
  return _ChapterModel.fromJson(json);
}

/// @nodoc
mixin _$ChapterModel {
  int get id => throw _privateConstructorUsedError;
  int get bookId => throw _privateConstructorUsedError;
  int get chapterNo => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  String get subtitleUrl => throw _privateConstructorUsedError;

  /// Serializes this ChapterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterModelCopyWith<ChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterModelCopyWith<$Res> {
  factory $ChapterModelCopyWith(
    ChapterModel value,
    $Res Function(ChapterModel) then,
  ) = _$ChapterModelCopyWithImpl<$Res, ChapterModel>;
  @useResult
  $Res call({
    int id,
    int bookId,
    int chapterNo,
    String title,
    String audioUrl,
    String subtitleUrl,
  });
}

/// @nodoc
class _$ChapterModelCopyWithImpl<$Res, $Val extends ChapterModel>
    implements $ChapterModelCopyWith<$Res> {
  _$ChapterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? chapterNo = null,
    Object? title = null,
    Object? audioUrl = null,
    Object? subtitleUrl = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            bookId:
                null == bookId
                    ? _value.bookId
                    : bookId // ignore: cast_nullable_to_non_nullable
                        as int,
            chapterNo:
                null == chapterNo
                    ? _value.chapterNo
                    : chapterNo // ignore: cast_nullable_to_non_nullable
                        as int,
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            audioUrl:
                null == audioUrl
                    ? _value.audioUrl
                    : audioUrl // ignore: cast_nullable_to_non_nullable
                        as String,
            subtitleUrl:
                null == subtitleUrl
                    ? _value.subtitleUrl
                    : subtitleUrl // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChapterModelImplCopyWith<$Res>
    implements $ChapterModelCopyWith<$Res> {
  factory _$$ChapterModelImplCopyWith(
    _$ChapterModelImpl value,
    $Res Function(_$ChapterModelImpl) then,
  ) = __$$ChapterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int bookId,
    int chapterNo,
    String title,
    String audioUrl,
    String subtitleUrl,
  });
}

/// @nodoc
class __$$ChapterModelImplCopyWithImpl<$Res>
    extends _$ChapterModelCopyWithImpl<$Res, _$ChapterModelImpl>
    implements _$$ChapterModelImplCopyWith<$Res> {
  __$$ChapterModelImplCopyWithImpl(
    _$ChapterModelImpl _value,
    $Res Function(_$ChapterModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bookId = null,
    Object? chapterNo = null,
    Object? title = null,
    Object? audioUrl = null,
    Object? subtitleUrl = null,
  }) {
    return _then(
      _$ChapterModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        bookId:
            null == bookId
                ? _value.bookId
                : bookId // ignore: cast_nullable_to_non_nullable
                    as int,
        chapterNo:
            null == chapterNo
                ? _value.chapterNo
                : chapterNo // ignore: cast_nullable_to_non_nullable
                    as int,
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        audioUrl:
            null == audioUrl
                ? _value.audioUrl
                : audioUrl // ignore: cast_nullable_to_non_nullable
                    as String,
        subtitleUrl:
            null == subtitleUrl
                ? _value.subtitleUrl
                : subtitleUrl // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterModelImpl implements _ChapterModel {
  const _$ChapterModelImpl({
    required this.id,
    required this.bookId,
    required this.chapterNo,
    required this.title,
    required this.audioUrl,
    required this.subtitleUrl,
  });

  factory _$ChapterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterModelImplFromJson(json);

  @override
  final int id;
  @override
  final int bookId;
  @override
  final int chapterNo;
  @override
  final String title;
  @override
  final String audioUrl;
  @override
  final String subtitleUrl;

  @override
  String toString() {
    return 'ChapterModel(id: $id, bookId: $bookId, chapterNo: $chapterNo, title: $title, audioUrl: $audioUrl, subtitleUrl: $subtitleUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.chapterNo, chapterNo) ||
                other.chapterNo == chapterNo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.subtitleUrl, subtitleUrl) ||
                other.subtitleUrl == subtitleUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    bookId,
    chapterNo,
    title,
    audioUrl,
    subtitleUrl,
  );

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterModelImplCopyWith<_$ChapterModelImpl> get copyWith =>
      __$$ChapterModelImplCopyWithImpl<_$ChapterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterModelImplToJson(this);
  }
}

abstract class _ChapterModel implements ChapterModel {
  const factory _ChapterModel({
    required final int id,
    required final int bookId,
    required final int chapterNo,
    required final String title,
    required final String audioUrl,
    required final String subtitleUrl,
  }) = _$ChapterModelImpl;

  factory _ChapterModel.fromJson(Map<String, dynamic> json) =
      _$ChapterModelImpl.fromJson;

  @override
  int get id;
  @override
  int get bookId;
  @override
  int get chapterNo;
  @override
  String get title;
  @override
  String get audioUrl;
  @override
  String get subtitleUrl;

  /// Create a copy of ChapterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterModelImplCopyWith<_$ChapterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
