import 'package:bloc/bloc.dart';
import 'package:books_online/core/api/api_client.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/core/utils/str_parser.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/data/model/carousel_model.dart';
import 'package:books_online/features/home/data/model/create_paypal_order_model.dart';
import 'package:books_online/features/home/data/model/text_segment.dart';
import 'package:books_online/features/home/domain/entity/paypal_order_extensions.dart';
import 'package:books_online/features/home/domain/usecase/create_paypal_order.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final CreatePaypalOrder _paymentRepository;
  HomeCubit(this._paymentRepository) : super(HomeState());

  final TextEditingController searchController = TextEditingController();
  final AudioPlayer _player = AudioPlayer();

  void changePage(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  void loadMockData() {
    emit(state.copyWith(status: Status.success, carousels: CarouselModel.mockCarouselData));
  }

  void loadMockBooksData() {
    final books = BookModel.mockData;

    emit(state.copyWith(status: Status.success, categories: CategoryModel.mockData, allBooks: books, book: books, selectedCategoryId: 1));
  }

  void loadCategoryData() {
    emit(state.copyWith(status: Status.success, categories: CategoryModel.mockData));
  }

  void selectCategory(int categoryId) {
    final allBooks = state.allBooks;

    final filteredBooks = categoryId == 1 ? allBooks : allBooks.where((book) => book.categoryId == categoryId).toList();

    emit(state.copyWith(selectedCategoryId: categoryId, book: filteredBooks));
  }

  Future<void> load(String source, {bool isAsset = true}) async {
    if (source.isEmpty) return;

    emit(state.copyWith(status: Status.loading));

    try {
      if (isAsset) {
        await _player.setAsset(source);
      } else {
        await _player.setUrl(source);
      }
      if (!isClosed) emit(state.copyWith(status: Status.success));
    } catch (e) {
      emit(state.copyWith(status: Status.failure, mess: e.toString()));
      return;
    }

    _player.positionStream.listen((p) {
      if (!isClosed) emit(state.copyWith(position: p));
    });

    _player.durationStream.listen((d) {
      if (!isClosed) emit(state.copyWith(duration: d ?? Duration.zero));
    });

    _player.playerStateStream.listen((playerState) {
      if (!isClosed) {
        emit(state.copyWith(playing: playerState.playing));

        if (playerState.processingState == ProcessingState.completed) {
          _player.pause();
          _player.seek(Duration.zero);
          if (!isClosed) emit(state.copyWith(position: Duration.zero, playing: false));
        }
      }
    });
  }

  void playPause() {
    if (_player.playing) {
      _player.pause();
    } else {
      _player.play();
    }
  }

  void seek(double seconds) {
    _player.seek(Duration(seconds: seconds.toInt()));
  }

  Future<void> loadBook(BookModel book) async {
    emit(state.copyWith(audioBook: book, isAudioLoading: true));

    // Load audio
    await load(book.audioUrl, isAsset: true);

    // Load subtitle
    final subtitleContent = await rootBundle.loadString(book.subtitleUrl);

    final segments = SrtParser.parse(subtitleContent);

    emit(state.copyWith(audioBook: book, segments: segments, isAudioLoading: false));
  }

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

  Future<void> shareText(BookModel book) async {
    try {
      String? localImagePath;

      if (book.coverImageUrl != null) {
        final dir = await getTemporaryDirectory();
        final fileName = '${book.productId}_cover.jpg';
        final filePath = '${dir.path}/$fileName';

        final apiClient = getIt<ApiClient>();
        await apiClient.dio.download(book.coverImageUrl!, filePath);
        localImagePath = filePath;
      }

      final params = ShareParams(
        text: 'Check out "${book.title}"${book.author != null ? ' by ${book.author}' : ''}!',
        files: localImagePath != null ? [XFile(localImagePath)] : null,
      );

      final result = await SharePlus.instance.share(params);

      if (result.status == ShareResultStatus.success) {
        return;
      }
    } catch (e) {
      print('Error sharing: $e');
    }
  }

  @override
  Future<void> close() {
    _player.dispose();
    searchController.dispose();
    return super.close();
  }
}
