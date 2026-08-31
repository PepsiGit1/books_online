import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page.dart';
import 'route_guard.dart';

class AppRouter {
  static const home = '/';

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }

  Route<dynamic> guarded({
    required RouteSettings settings,
    required RouteGuard guard,
    required WidgetBuilder builder,
  }) {
    return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        if (!guard.canActivate(settings)) {
          return guard.fallback(context: context);
        }
        return builder(context);
      },
    );
  }
}

