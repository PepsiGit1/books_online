import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/features/home/presentation/widgets/app_search.dart';
import 'package:books_online/features/search/presentation/cubit/search_cubit.dart';
import 'package:books_online/features/search/presentation/widget/search_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SearchPage extends StatelessWidget implements AutoRouteWrapper {
  const SearchPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<SearchCubit>(), child: this);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SearchCubit>();

    return Scaffold(
      appBar: AppBar(
        title: AppSearchBar(
          controller: cubit.searchController,
          onSubmitted: (value) {
            cubit.searchBooks(value, categoryId: 2);
          },
          onClear: () {
            cubit.getDefaultBooks();
          },
        ),
        centerTitle: true,
      ),
      body: const SearchContent(),
    );
  }
}
