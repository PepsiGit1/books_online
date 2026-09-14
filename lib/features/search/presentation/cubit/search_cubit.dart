import 'package:bloc/bloc.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/features/home/data/model/book_category_model.dart';
import 'package:books_online/features/home/data/model/book_model.dart';
import 'package:books_online/features/home/domain/usecase/book_usecase.dart';
import 'package:books_online/features/home/domain/usecase/category_usecase.dart';
import 'package:books_online/features/search/domain/usecase/search_usecase.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final SearchBooksUseCase _searchBooksUseCase;
  final GetAllBooksUsecase _allBooksUseCase;
  final GetAllCategoriesUsecase _allCategoriesUsecase;

  SearchCubit(this._searchBooksUseCase, this._allBooksUseCase, this._allCategoriesUsecase) : super(const SearchState());

  final TextEditingController searchController = TextEditingController();

  Future<void> getDefaultBooks() async {
    if (isClosed) return;

    emit(state.copyWith(status: Status.loading, isSearching: false, selectedCategoryId: 0, searchResults: []));

    try {
      final result = await _allBooksUseCase();

      if (isClosed) return;

      emit(state.copyWith(status: Status.success, book: result.take(4).toList(), searchResults: [], isSearching: false, selectedCategoryId: 0));
    } catch (e) {
      if (isClosed) return;

      emit(state.copyWith(status: Status.failure, mess: e.toString()));
    }
  }

  Future<void> getCategories() async {
    if (isClosed) return;

    final result = await _allCategoriesUsecase();

    if (isClosed) return;

    if (result.isSuccess) {
      emit(state.copyWith(categories: result.data ?? []));
    }
  }

  Future<void> searchBooks(String query, {int? categoryId}) async {
    final selectedId = categoryId ?? state.selectedCategoryId;

    emit(state.copyWith(selectedCategoryId: selectedId, status: Status.loading, mess: ''));

    final result = await _searchBooksUseCase(query: query, categoryId: selectedId == 0 ? null : selectedId);

    if (result.isSuccess) {
      final results = result.data ?? [];

      emit(
        state.copyWith(
          selectedCategoryId: selectedId,
          status: results.isEmpty ? Status.notfound : Status.success,
          searchResults: results,
          isSearching: query.trim().isNotEmpty || selectedId != 0,
        ),
      );

      return;
    }

    emit(state.copyWith(selectedCategoryId: selectedId, status: Status.failure, mess: result.error ?? 'Search failed'));
  }

  @override
  Future<void> close() async {
    searchController.dispose();
    return super.close();
  }
}
