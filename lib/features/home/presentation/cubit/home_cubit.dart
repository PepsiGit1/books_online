import 'package:bloc/bloc.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/core/utils/str_parser.dart';
import 'package:books_online/features/home/data/model/audio_book_model.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/data/model/carousel_model.dart';
import 'package:books_online/features/home/data/model/text_segment.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:flutter/services.dart' show rootBundle;

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());

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

  Future<void> loadBook(AudioBookModel book) async {
    emit(state.copyWith(audioBook: book, isAudioLoading: true));

    // Load audio
    await load(book.audioUrl, isAsset: true);

    // Load subtitle
    final subtitleContent = await rootBundle.loadString(book.subtitleUrl);

    final segments = SrtParser.parse(subtitleContent);

    emit(state.copyWith(audioBook: book, segments: segments, isAudioLoading: false));
  }

  @override
  Future<void> close() {
    _player.dispose();
    searchController.dispose();
    return super.close();
  }
}
