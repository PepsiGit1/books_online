import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/core/utils/str_parser.dart';
import 'package:books_online/core/utils/url_reslove.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/data/model/carousel_model.dart';
import 'package:books_online/features/home/data/model/chapter_model.dart';
import 'package:books_online/features/home/data/model/create_paypal_order_model.dart';
import 'package:books_online/features/home/data/model/text_segment.dart';
import 'package:books_online/features/home/domain/entity/paypal_order_extensions.dart';
import 'package:books_online/features/home/domain/usecase/book_detail_usecase.dart';
import 'package:books_online/features/home/domain/usecase/book_usecase.dart';
import 'package:books_online/features/home/domain/usecase/category_usecase.dart';
import 'package:books_online/features/home/domain/usecase/create_paypal_order.dart';
import 'package:books_online/features/home/domain/usecase/subtitle_usecase.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final CreatePaypalOrder _paymentRepository;

  final GetAllBooksUsecase _allBooksUsecase;

  final GetBookDetailUsecase getBookDetail;

  final GetBookSubtitleUsecase getBookSubtitle;

  final GetAllCategoriesUsecase _getAllCategoriesUsecase;

  HomeCubit(this._paymentRepository, this._allBooksUsecase, this.getBookDetail, this.getBookSubtitle, this._getAllCategoriesUsecase)
    : super(const HomeState());

  final AudioPlayer _player = AudioPlayer();

  StreamSubscription<Duration>? _positionSubscription;

  StreamSubscription<Duration?>? _durationSubscription;

  StreamSubscription<PlayerState>? _playerStateSubscription;

  // ============================================================
  // PAGE
  // ============================================================

  void changePage(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  // ============================================================
  // MOCK DATA
  // ============================================================

  void loadMockData() {
    emit(state.copyWith(status: Status.success, carousels: CarouselModel.mockCarouselData));
  }

  // ============================================================
  // BOOKS
  // ============================================================

  Future<void> getAllBooks() async {
    if (isClosed) return;

    emit(state.copyWith(status: Status.loading));

    try {
      final books = await _allBooksUsecase();

      // Cubit may have been closed while waiting for API
      if (isClosed) return;

      emit(state.copyWith(status: Status.success, allBooks: books, book: books));
    } catch (e) {
      debugPrint('getAllBooks error: $e');

      if (isClosed) return;

      emit(state.copyWith(status: Status.failure, mess: e.toString()));
    }
  }

  // ============================================================
  // BOOK DETAIL
  // ============================================================

  Future<void> loadBookDetail(BookModel book) async {
    try {
      emit(state.copyWith(audioBook: book, selectedChapter: null, isAudioLoading: false, segments: []));

      if (book.chapters.isEmpty) {
        debugPrint('Book has no chapters');

        return;
      }

      final firstChapter = book.chapters.first;

      await loadChapter(book: book, chapter: firstChapter);
    } catch (e) {
      debugPrint('loadBookDetail error: $e');

      emit(state.copyWith(isAudioLoading: false, status: Status.failure, mess: e.toString()));
    }
  }

  // ============================================================
  // CHAPTER
  // ============================================================

  Future<void> loadChapter({required BookModel book, required ChapterModel chapter}) async {
    try {
      emit(state.copyWith(audioBook: book, selectedChapter: chapter, isAudioLoading: true, segments: []));

      // Stop previous audio.
      await _player.stop();

      // -----------------------------
      // Audio
      // -----------------------------

      await load(chapter.audioUrl, isAsset: false);

      // -----------------------------
      // Subtitle
      // -----------------------------

      final subtitleContent = await getBookSubtitle(url: chapter.subtitleUrl);

      final segments = SrtParser.parse(subtitleContent);

      emit(state.copyWith(audioBook: book, selectedChapter: chapter, segments: segments, isAudioLoading: false, status: Status.success));
    } catch (e) {
      debugPrint('loadChapter error: $e');

      emit(state.copyWith(isAudioLoading: false, status: Status.failure, mess: e.toString()));
    }
  }

  // ============================================================
  // NEXT CHAPTER
  // ============================================================

  Future<void> nextChapter() async {
    final book = state.audioBook;

    final currentChapter = state.selectedChapter;

    if (book == null || currentChapter == null) {
      return;
    }

    final currentIndex = book.chapters.indexWhere((chapter) => chapter.id == currentChapter.id);

    if (currentIndex == -1) {
      return;
    }

    final nextIndex = currentIndex + 1;

    if (nextIndex >= book.chapters.length) {
      return;
    }

    final next = book.chapters[nextIndex];

    await loadChapter(book: book, chapter: next);
  }

  // ============================================================
  // PREVIOUS CHAPTER
  // ============================================================

  Future<void> previousChapter() async {
    final book = state.audioBook;

    final currentChapter = state.selectedChapter;

    if (book == null || currentChapter == null) {
      return;
    }

    final currentIndex = book.chapters.indexWhere((chapter) => chapter.id == currentChapter.id);

    if (currentIndex <= 0) {
      return;
    }

    final previousIndex = currentIndex - 1;

    final previous = book.chapters[previousIndex];

    await loadChapter(book: book, chapter: previous);
  }

  // ============================================================
  // SELECT CHAPTER
  // ============================================================

  Future<void> selectChapter(ChapterModel chapter) async {
    final book = state.audioBook;

    if (book == null) {
      return;
    }

    await loadChapter(book: book, chapter: chapter);
  }

  // ============================================================
  // CATEGORY
  // ============================================================

  Future<void> getCategories() async {
    if (isClosed) return;

    emit(state.copyWith(status: Status.loading));

    try {
      final result = await _getAllCategoriesUsecase();

      if (isClosed) return;

      if (result.isSuccess) {
        emit(state.copyWith(status: Status.success, categories: result.data ?? []));
      } else {
        emit(state.copyWith(status: Status.failure));
      }
    } catch (e) {
      if (isClosed) return;

      emit(state.copyWith(status: Status.failure, mess: e.toString()));
    }
  }

  // ============================================================
  // CATEGORY FILTER
  // ============================================================

  void selectCategory(int categoryId) {
    emit(
      state.copyWith(
        selectedCategoryId: categoryId,

        book: categoryId == 0 ? state.allBooks : state.allBooks.where((book) => book.categoryId == categoryId).toList(),
      ),
    );
  }

  // ============================================================
  // AUDIO
  // ============================================================

  Future<void> load(String source, {bool isAsset = true}) async {
    if (source.isEmpty) {
      return;
    }

    emit(state.copyWith(status: Status.loading));

    try {
      if (isAsset) {
        await _player.setAsset(source);
      } else {
        final url = UrlResolver.resolve(source);

        debugPrint('Audio URL: $url');

        await _player.setUrl(url);
      }

      if (!isClosed) {
        emit(state.copyWith(status: Status.success));
      }
    } catch (e) {
      debugPrint('Audio error: $e');

      if (!isClosed) {
        emit(state.copyWith(status: Status.failure, mess: e.toString()));
      }

      return;
    }

    await _cancelAudioListeners();

    _positionSubscription = _player.positionStream.listen((position) {
      if (!isClosed) {
        emit(state.copyWith(position: position));
      }
    });

    _durationSubscription = _player.durationStream.listen((duration) {
      if (!isClosed) {
        emit(state.copyWith(duration: duration ?? Duration.zero));
      }
    });

    _playerStateSubscription = _player.playerStateStream.listen((playerState) async {
      if (isClosed) {
        return;
      }

      emit(state.copyWith(playing: playerState.playing));

      if (playerState.processingState == ProcessingState.completed) {
        await _handleChapterCompleted();
      }
    });
  }

  // ============================================================
  // CHAPTER COMPLETED
  // ============================================================

  Future<void> _handleChapterCompleted() async {
    await _player.pause();

    await _player.seek(Duration.zero);

    if (!isClosed) {
      emit(state.copyWith(position: Duration.zero, playing: false));
    }

    // Automatically move to next chapter.
    final book = state.audioBook;
    final current = state.selectedChapter;

    if (book == null || current == null) {
      return;
    }

    final currentIndex = book.chapters.indexWhere((chapter) => chapter.id == current.id);

    if (currentIndex == -1) {
      return;
    }

    final nextIndex = currentIndex + 1;

    if (nextIndex >= book.chapters.length) {
      return;
    }

    final next = book.chapters[nextIndex];

    await loadChapter(book: book, chapter: next);
  }

  // ============================================================
  // PLAY / PAUSE
  // ============================================================

  void playPause() {
    if (_player.playing) {
      _player.pause();
    } else {
      _player.play();
    }
  }

  // ============================================================
  // SEEK
  // ============================================================

  void seek(double seconds) {
    _player.seek(Duration(seconds: seconds.toInt()));
  }

  // ============================================================
  // PAYPAL
  // ============================================================

  Future<void> createPaymentPayPal(CreatePaypalOrderModel paypal) async {
    emit(state.copyWith(status: Status.loading));

    try {
      final order = await _paymentRepository(
        value: paypal.value,
        referenceId: paypal.referenceId,
        description: paypal.description,
        customId: paypal.customId,
      );

      emit(state.copyWith(status: Status.success, mess: 'Order created: ${order.id}'));

      final approveUrl = order.approveUrl;

      if (approveUrl != null) {
        final uri = Uri.parse(approveUrl);

        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.inAppWebView);
        }
      }
    } catch (e) {
      emit(state.copyWith(status: Status.failure, mess: e.toString()));
    }
  }

  // ============================================================
  // SHARE
  // ============================================================

  Future<void> shareText(BookModel book) async {
    try {
      String? localImagePath;

      if (book.coverImageUrl != null && book.coverImageUrl!.isNotEmpty) {
        final dir = await getTemporaryDirectory();

        final fileName = '${book.productId}_cover.jpg';

        final filePath = '${dir.path}/$fileName';

        final imageUrl = '${ApiEndpoints.baseUrl}${book.coverImageUrl}';

        final apiClient = getIt<ApiClient>();

        await apiClient.dio.download(imageUrl, filePath);

        localImagePath = filePath;
      }

      final params = ShareParams(
        text:
            'Check out "${book.title}"'
            '${book.author != null ? ' by ${book.author}' : ''}!',
        files: localImagePath != null ? [XFile(localImagePath)] : null,
      );

      await SharePlus.instance.share(params);
    } catch (e) {
      debugPrint('Error sharing: $e');
    }
  }

  // ============================================================
  // CLEAN AUDIO LISTENERS
  // ============================================================

  Future<void> _cancelAudioListeners() async {
    await _positionSubscription?.cancel();

    await _durationSubscription?.cancel();

    await _playerStateSubscription?.cancel();

    _positionSubscription = null;
    _durationSubscription = null;
    _playerStateSubscription = null;
  }

  // ============================================================
  // CLOSE
  // ============================================================

  @override
  Future<void> close() async {
    await _cancelAudioListeners();

    await _player.dispose();

    return super.close();
  }
}
