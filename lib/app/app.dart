import 'package:books_online/core/config/config.dart';
import 'package:books_online/core/routing/auth_guard.dart';
import 'package:books_online/core/routing/router.dart';
import 'package:books_online/core/theme/app_theme.dart';
import 'package:books_online/features/home/presentation/cubit/home_cubit.dart';
import 'package:books_online/features/search/presentation/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter(getIt<AuthGuard>());

    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<HomeCubit>()), BlocProvider(create: (_) => getIt<SearchCubit>())],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Books Online',
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        themeMode: ThemeMode.system,
        routerConfig: appRouter.config(),
      ),
    );
  }
}
