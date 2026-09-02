import 'package:bloc/bloc.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/features/search/data/model/search_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState());
  void loadMockBooksData() {
    debugPrint('🔥 loadMockBooksData called, cubit instance: $hashCode');
    final books = SearchModel.mockData;
    emit(state.copyWith(status: Status.success, book: books));
    debugPrint('🔥 emitted, new state book count: ${state.book.length}');
  }
}
