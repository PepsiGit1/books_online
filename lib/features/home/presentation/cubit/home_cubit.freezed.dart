// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  Status get status => throw _privateConstructorUsedError;
  String get mess => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError; // Books
  List<BookModel> get allBooks => throw _privateConstructorUsedError;
  List<BookModel> get book => throw _privateConstructorUsedError; // Home
  List<CarouselModel> get carousels =>
      throw _privateConstructorUsedError; // Categories
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  int get selectedCategoryId => throw _privateConstructorUsedError; // Audio
  BookModel? get audioBook => throw _privateConstructorUsedError;
  ChapterModel? get selectedChapter => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  bool get playing => throw _privateConstructorUsedError;
  bool get isAudioLoading => throw _privateConstructorUsedError;
  List<TextSegment> get segments =>
      throw _privateConstructorUsedError; // Payment
  bool get isPurchasing => throw _privateConstructorUsedError;
  bool get purchaseSuccess => throw _privateConstructorUsedError;
  String? get purchaseProductId => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    Status status,
    String mess,
    int currentIndex,
    List<BookModel> allBooks,
    List<BookModel> book,
    List<CarouselModel> carousels,
    List<CategoryModel> categories,
    int selectedCategoryId,
    BookModel? audioBook,
    ChapterModel? selectedChapter,
    Duration position,
    Duration duration,
    bool playing,
    bool isAudioLoading,
    List<TextSegment> segments,
    bool isPurchasing,
    bool purchaseSuccess,
    String? purchaseProductId,
  });

  $BookModelCopyWith<$Res>? get audioBook;
  $ChapterModelCopyWith<$Res>? get selectedChapter;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mess = null,
    Object? currentIndex = null,
    Object? allBooks = null,
    Object? book = null,
    Object? carousels = null,
    Object? categories = null,
    Object? selectedCategoryId = null,
    Object? audioBook = freezed,
    Object? selectedChapter = freezed,
    Object? position = null,
    Object? duration = null,
    Object? playing = null,
    Object? isAudioLoading = null,
    Object? segments = null,
    Object? isPurchasing = null,
    Object? purchaseSuccess = null,
    Object? purchaseProductId = freezed,
  }) {
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
            currentIndex:
                null == currentIndex
                    ? _value.currentIndex
                    : currentIndex // ignore: cast_nullable_to_non_nullable
                        as int,
            allBooks:
                null == allBooks
                    ? _value.allBooks
                    : allBooks // ignore: cast_nullable_to_non_nullable
                        as List<BookModel>,
            book:
                null == book
                    ? _value.book
                    : book // ignore: cast_nullable_to_non_nullable
                        as List<BookModel>,
            carousels:
                null == carousels
                    ? _value.carousels
                    : carousels // ignore: cast_nullable_to_non_nullable
                        as List<CarouselModel>,
            categories:
                null == categories
                    ? _value.categories
                    : categories // ignore: cast_nullable_to_non_nullable
                        as List<CategoryModel>,
            selectedCategoryId:
                null == selectedCategoryId
                    ? _value.selectedCategoryId
                    : selectedCategoryId // ignore: cast_nullable_to_non_nullable
                        as int,
            audioBook:
                freezed == audioBook
                    ? _value.audioBook
                    : audioBook // ignore: cast_nullable_to_non_nullable
                        as BookModel?,
            selectedChapter:
                freezed == selectedChapter
                    ? _value.selectedChapter
                    : selectedChapter // ignore: cast_nullable_to_non_nullable
                        as ChapterModel?,
            position:
                null == position
                    ? _value.position
                    : position // ignore: cast_nullable_to_non_nullable
                        as Duration,
            duration:
                null == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as Duration,
            playing:
                null == playing
                    ? _value.playing
                    : playing // ignore: cast_nullable_to_non_nullable
                        as bool,
            isAudioLoading:
                null == isAudioLoading
                    ? _value.isAudioLoading
                    : isAudioLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            segments:
                null == segments
                    ? _value.segments
                    : segments // ignore: cast_nullable_to_non_nullable
                        as List<TextSegment>,
            isPurchasing:
                null == isPurchasing
                    ? _value.isPurchasing
                    : isPurchasing // ignore: cast_nullable_to_non_nullable
                        as bool,
            purchaseSuccess:
                null == purchaseSuccess
                    ? _value.purchaseSuccess
                    : purchaseSuccess // ignore: cast_nullable_to_non_nullable
                        as bool,
            purchaseProductId:
                freezed == purchaseProductId
                    ? _value.purchaseProductId
                    : purchaseProductId // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookModelCopyWith<$Res>? get audioBook {
    if (_value.audioBook == null) {
      return null;
    }

    return $BookModelCopyWith<$Res>(_value.audioBook!, (value) {
      return _then(_value.copyWith(audioBook: value) as $Val);
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterModelCopyWith<$Res>? get selectedChapter {
    if (_value.selectedChapter == null) {
      return null;
    }

    return $ChapterModelCopyWith<$Res>(_value.selectedChapter!, (value) {
      return _then(_value.copyWith(selectedChapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Status status,
    String mess,
    int currentIndex,
    List<BookModel> allBooks,
    List<BookModel> book,
    List<CarouselModel> carousels,
    List<CategoryModel> categories,
    int selectedCategoryId,
    BookModel? audioBook,
    ChapterModel? selectedChapter,
    Duration position,
    Duration duration,
    bool playing,
    bool isAudioLoading,
    List<TextSegment> segments,
    bool isPurchasing,
    bool purchaseSuccess,
    String? purchaseProductId,
  });

  @override
  $BookModelCopyWith<$Res>? get audioBook;
  @override
  $ChapterModelCopyWith<$Res>? get selectedChapter;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? mess = null,
    Object? currentIndex = null,
    Object? allBooks = null,
    Object? book = null,
    Object? carousels = null,
    Object? categories = null,
    Object? selectedCategoryId = null,
    Object? audioBook = freezed,
    Object? selectedChapter = freezed,
    Object? position = null,
    Object? duration = null,
    Object? playing = null,
    Object? isAudioLoading = null,
    Object? segments = null,
    Object? isPurchasing = null,
    Object? purchaseSuccess = null,
    Object? purchaseProductId = freezed,
  }) {
    return _then(
      _$HomeStateImpl(
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
        currentIndex:
            null == currentIndex
                ? _value.currentIndex
                : currentIndex // ignore: cast_nullable_to_non_nullable
                    as int,
        allBooks:
            null == allBooks
                ? _value._allBooks
                : allBooks // ignore: cast_nullable_to_non_nullable
                    as List<BookModel>,
        book:
            null == book
                ? _value._book
                : book // ignore: cast_nullable_to_non_nullable
                    as List<BookModel>,
        carousels:
            null == carousels
                ? _value._carousels
                : carousels // ignore: cast_nullable_to_non_nullable
                    as List<CarouselModel>,
        categories:
            null == categories
                ? _value._categories
                : categories // ignore: cast_nullable_to_non_nullable
                    as List<CategoryModel>,
        selectedCategoryId:
            null == selectedCategoryId
                ? _value.selectedCategoryId
                : selectedCategoryId // ignore: cast_nullable_to_non_nullable
                    as int,
        audioBook:
            freezed == audioBook
                ? _value.audioBook
                : audioBook // ignore: cast_nullable_to_non_nullable
                    as BookModel?,
        selectedChapter:
            freezed == selectedChapter
                ? _value.selectedChapter
                : selectedChapter // ignore: cast_nullable_to_non_nullable
                    as ChapterModel?,
        position:
            null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                    as Duration,
        duration:
            null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as Duration,
        playing:
            null == playing
                ? _value.playing
                : playing // ignore: cast_nullable_to_non_nullable
                    as bool,
        isAudioLoading:
            null == isAudioLoading
                ? _value.isAudioLoading
                : isAudioLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        segments:
            null == segments
                ? _value._segments
                : segments // ignore: cast_nullable_to_non_nullable
                    as List<TextSegment>,
        isPurchasing:
            null == isPurchasing
                ? _value.isPurchasing
                : isPurchasing // ignore: cast_nullable_to_non_nullable
                    as bool,
        purchaseSuccess:
            null == purchaseSuccess
                ? _value.purchaseSuccess
                : purchaseSuccess // ignore: cast_nullable_to_non_nullable
                    as bool,
        purchaseProductId:
            freezed == purchaseProductId
                ? _value.purchaseProductId
                : purchaseProductId // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    this.status = Status.initial,
    this.mess = '',
    this.currentIndex = 0,
    final List<BookModel> allBooks = const [],
    final List<BookModel> book = const [],
    final List<CarouselModel> carousels = const [],
    final List<CategoryModel> categories = const [],
    this.selectedCategoryId = 0,
    this.audioBook,
    this.selectedChapter,
    this.position = Duration.zero,
    this.duration = Duration.zero,
    this.playing = false,
    this.isAudioLoading = false,
    final List<TextSegment> segments = const [],
    this.isPurchasing = false,
    this.purchaseSuccess = false,
    this.purchaseProductId,
  }) : _allBooks = allBooks,
       _book = book,
       _carousels = carousels,
       _categories = categories,
       _segments = segments;

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final String mess;
  @override
  @JsonKey()
  final int currentIndex;
  // Books
  final List<BookModel> _allBooks;
  // Books
  @override
  @JsonKey()
  List<BookModel> get allBooks {
    if (_allBooks is EqualUnmodifiableListView) return _allBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allBooks);
  }

  final List<BookModel> _book;
  @override
  @JsonKey()
  List<BookModel> get book {
    if (_book is EqualUnmodifiableListView) return _book;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_book);
  }

  // Home
  final List<CarouselModel> _carousels;
  // Home
  @override
  @JsonKey()
  List<CarouselModel> get carousels {
    if (_carousels is EqualUnmodifiableListView) return _carousels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carousels);
  }

  // Categories
  final List<CategoryModel> _categories;
  // Categories
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final int selectedCategoryId;
  // Audio
  @override
  final BookModel? audioBook;
  @override
  final ChapterModel? selectedChapter;
  @override
  @JsonKey()
  final Duration position;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final bool playing;
  @override
  @JsonKey()
  final bool isAudioLoading;
  final List<TextSegment> _segments;
  @override
  @JsonKey()
  List<TextSegment> get segments {
    if (_segments is EqualUnmodifiableListView) return _segments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_segments);
  }

  // Payment
  @override
  @JsonKey()
  final bool isPurchasing;
  @override
  @JsonKey()
  final bool purchaseSuccess;
  @override
  final String? purchaseProductId;

  @override
  String toString() {
    return 'HomeState(status: $status, mess: $mess, currentIndex: $currentIndex, allBooks: $allBooks, book: $book, carousels: $carousels, categories: $categories, selectedCategoryId: $selectedCategoryId, audioBook: $audioBook, selectedChapter: $selectedChapter, position: $position, duration: $duration, playing: $playing, isAudioLoading: $isAudioLoading, segments: $segments, isPurchasing: $isPurchasing, purchaseSuccess: $purchaseSuccess, purchaseProductId: $purchaseProductId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.mess, mess) || other.mess == mess) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            const DeepCollectionEquality().equals(other._allBooks, _allBooks) &&
            const DeepCollectionEquality().equals(other._book, _book) &&
            const DeepCollectionEquality().equals(
              other._carousels,
              _carousels,
            ) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            (identical(other.selectedCategoryId, selectedCategoryId) ||
                other.selectedCategoryId == selectedCategoryId) &&
            (identical(other.audioBook, audioBook) ||
                other.audioBook == audioBook) &&
            (identical(other.selectedChapter, selectedChapter) ||
                other.selectedChapter == selectedChapter) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.playing, playing) || other.playing == playing) &&
            (identical(other.isAudioLoading, isAudioLoading) ||
                other.isAudioLoading == isAudioLoading) &&
            const DeepCollectionEquality().equals(other._segments, _segments) &&
            (identical(other.isPurchasing, isPurchasing) ||
                other.isPurchasing == isPurchasing) &&
            (identical(other.purchaseSuccess, purchaseSuccess) ||
                other.purchaseSuccess == purchaseSuccess) &&
            (identical(other.purchaseProductId, purchaseProductId) ||
                other.purchaseProductId == purchaseProductId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    mess,
    currentIndex,
    const DeepCollectionEquality().hash(_allBooks),
    const DeepCollectionEquality().hash(_book),
    const DeepCollectionEquality().hash(_carousels),
    const DeepCollectionEquality().hash(_categories),
    selectedCategoryId,
    audioBook,
    selectedChapter,
    position,
    duration,
    playing,
    isAudioLoading,
    const DeepCollectionEquality().hash(_segments),
    isPurchasing,
    purchaseSuccess,
    purchaseProductId,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final Status status,
    final String mess,
    final int currentIndex,
    final List<BookModel> allBooks,
    final List<BookModel> book,
    final List<CarouselModel> carousels,
    final List<CategoryModel> categories,
    final int selectedCategoryId,
    final BookModel? audioBook,
    final ChapterModel? selectedChapter,
    final Duration position,
    final Duration duration,
    final bool playing,
    final bool isAudioLoading,
    final List<TextSegment> segments,
    final bool isPurchasing,
    final bool purchaseSuccess,
    final String? purchaseProductId,
  }) = _$HomeStateImpl;

  @override
  Status get status;
  @override
  String get mess;
  @override
  int get currentIndex; // Books
  @override
  List<BookModel> get allBooks;
  @override
  List<BookModel> get book; // Home
  @override
  List<CarouselModel> get carousels; // Categories
  @override
  List<CategoryModel> get categories;
  @override
  int get selectedCategoryId; // Audio
  @override
  BookModel? get audioBook;
  @override
  ChapterModel? get selectedChapter;
  @override
  Duration get position;
  @override
  Duration get duration;
  @override
  bool get playing;
  @override
  bool get isAudioLoading;
  @override
  List<TextSegment> get segments; // Payment
  @override
  bool get isPurchasing;
  @override
  bool get purchaseSuccess;
  @override
  String? get purchaseProductId;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
