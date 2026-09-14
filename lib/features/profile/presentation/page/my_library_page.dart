import 'package:auto_route/auto_route.dart';
import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/constants/api_endpoints.dart';
import 'package:books_online/core/enum/status.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/core/theme/app_colors.dart';
import 'package:books_online/core/widgets/card_book_row_widget.dart';
import 'package:books_online/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MyLibraryPage extends StatelessWidget implements AutoRouteWrapper {
  const MyLibraryPage({super.key, required this.userId});

  final String userId;

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (_) => getIt<ProfileCubit>()..getMyLibrary(userId: userId), child: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(title: const Text('My Library'), centerTitle: true),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if (state.libraryStatus == Status.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.libraryStatus == Status.failure) {
            return Center(child: Text(state.mess.isNotEmpty ? state.mess : 'Failed to load library'));
          }

          if (state.myLibrary.isEmpty) {
            return const Center(child: Text('Your library is empty', style: TextStyle(fontSize: 16)));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: state.myLibrary.length,
            separatorBuilder: (_, __) {
              return const SizedBox(height: 12);
            },
            itemBuilder: (context, index) {
              final book = state.myLibrary[index];

              return CardBookRowWidget(
                title: book.title,
                author: book.author ?? 'Unknown author',
                coverImageUrl: '${ApiEndpoints.baseUrl}${book.coverImageUrl ?? ''}',
                rating: book.rating ?? 0,
                progress: book.progress ?? 0,
                isPremium: book.isPremium,
                isSaved: book.isSaved,
                onTap: () {
                  context.router.push(HomeDetailRoute(book: book));
                },
              );
            },
          );
        },
      ),
    );
  }
}
