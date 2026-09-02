import 'package:auto_route/auto_route.dart';
import 'package:books_online/features/home/presentation/pages/home_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [AutoRoute(page: HomeRoute.page, initial: true)];
}
