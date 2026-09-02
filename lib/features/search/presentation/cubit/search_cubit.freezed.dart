// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SearchState {
  Status get status => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError;
  List<SearchModel> get book => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
    SearchState value,
    $Res Function(SearchState) then,
  ) = _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call({Status status, String mess, List<SearchModel> book});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? mess = null, Object? book = null}) {
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
            book:
                null == book
                    ? _value.book
                    : book // ignore: cast_nullable_to_non_nullable
                        as List<SearchModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
    _$SearchStateImpl value,
    $Res Function(_$SearchStateImpl) then,
  ) = __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, String mess, List<SearchModel> book});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
    _$SearchStateImpl _value,
    $Res Function(_$SearchStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? status = null, Object? mess = null, Object? book = null}) {
    return _then(
      _$SearchStateImpl(
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
        book:
            null == book
                ? _value._book
                : book // ignore: cast_nullable_to_non_nullable
                    as List<SearchModel>,
      ),
    );
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl({
    this.status = Status.initial,
    this.mess = '',
    final List<SearchModel> book = const [],
  }) : _book = book;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final String mess;
  final List<SearchModel> _book;
  @override
  @JsonKey()
  List<SearchModel> get book {
    if (_book is EqualUnmodifiableListView) return _book;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_book);
  }

  @override
  String toString() {
    return 'SearchState(status: $status, mess: $mess, book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            const DeepCollectionEquality().equals(other._book, _book));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    mess,
    const DeepCollectionEquality().hash(_book),
  );

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState({
    final Status status,
    final String mess,
    final List<SearchModel> book,
  }) = _$SearchStateImpl;

  @override
  Status get status;
  @override
  String get mess;
  @override
  List<SearchModel> get book;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
