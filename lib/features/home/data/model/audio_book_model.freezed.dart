// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AudioBookModel _$AudioBookModelFromJson(Map<String, dynamic> json) {
  return _AudioBookModel.fromJson(json);
}

/// @nodoc
mixin _$AudioBookModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  String get subtitleUrl => throw _privateConstructorUsedError;

  /// Serializes this AudioBookModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioBookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioBookModelCopyWith<AudioBookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioBookModelCopyWith<$Res> {
  factory $AudioBookModelCopyWith(
    AudioBookModel value,
    $Res Function(AudioBookModel) then,
  ) = _$AudioBookModelCopyWithImpl<$Res, AudioBookModel>;
  @useResult
  $Res call({
    int id,
    String title,
    String author,
    String audioUrl,
    String subtitleUrl,
  });
}

/// @nodoc
class _$AudioBookModelCopyWithImpl<$Res, $Val extends AudioBookModel>
    implements $AudioBookModelCopyWith<$Res> {
  _$AudioBookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioBookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
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
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AudioBookModelImplCopyWith<$Res>
    implements $AudioBookModelCopyWith<$Res> {
  factory _$$AudioBookModelImplCopyWith(
    _$AudioBookModelImpl value,
    $Res Function(_$AudioBookModelImpl) then,
  ) = __$$AudioBookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String author,
    String audioUrl,
    String subtitleUrl,
  });
}

/// @nodoc
class __$$AudioBookModelImplCopyWithImpl<$Res>
    extends _$AudioBookModelCopyWithImpl<$Res, _$AudioBookModelImpl>
    implements _$$AudioBookModelImplCopyWith<$Res> {
  __$$AudioBookModelImplCopyWithImpl(
    _$AudioBookModelImpl _value,
    $Res Function(_$AudioBookModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AudioBookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? author = null,
    Object? audioUrl = null,
    Object? subtitleUrl = null,
  }) {
    return _then(
      _$AudioBookModelImpl(
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
            null == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
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
class _$AudioBookModelImpl implements _AudioBookModel {
  const _$AudioBookModelImpl({
    required this.id,
    required this.title,
    required this.author,
    required this.audioUrl,
    required this.subtitleUrl,
  });

  factory _$AudioBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioBookModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String author;
  @override
  final String audioUrl;
  @override
  final String subtitleUrl;

  @override
  String toString() {
    return 'AudioBookModel(id: $id, title: $title, author: $author, audioUrl: $audioUrl, subtitleUrl: $subtitleUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioBookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.subtitleUrl, subtitleUrl) ||
                other.subtitleUrl == subtitleUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, author, audioUrl, subtitleUrl);

  /// Create a copy of AudioBookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioBookModelImplCopyWith<_$AudioBookModelImpl> get copyWith =>
      __$$AudioBookModelImplCopyWithImpl<_$AudioBookModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioBookModelImplToJson(this);
  }
}

abstract class _AudioBookModel implements AudioBookModel {
  const factory _AudioBookModel({
    required final int id,
    required final String title,
    required final String author,
    required final String audioUrl,
    required final String subtitleUrl,
  }) = _$AudioBookModelImpl;

  factory _AudioBookModel.fromJson(Map<String, dynamic> json) =
      _$AudioBookModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get author;
  @override
  String get audioUrl;
  @override
  String get subtitleUrl;

  /// Create a copy of AudioBookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioBookModelImplCopyWith<_$AudioBookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
