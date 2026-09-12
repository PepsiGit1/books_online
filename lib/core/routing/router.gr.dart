// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

/// generated route for
/// [AuthCheckPage]
class AuthCheckRoute extends PageRouteInfo<void> {
  const AuthCheckRoute({List<PageRouteInfo>? children})
    : super(AuthCheckRoute.name, initialChildren: children);

  static const String name = 'AuthCheckRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const AuthCheckPage());
    },
  );
}

/// generated route for
/// [ChangePasswordPage]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute({List<PageRouteInfo>? children})
    : super(ChangePasswordRoute.name, initialChildren: children);

  static const String name = 'ChangePasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ChangePasswordPage());
    },
  );
}

/// generated route for
/// [HomeDetailPage]
class HomeDetailRoute extends PageRouteInfo<HomeDetailRouteArgs> {
  HomeDetailRoute({
    Key? key,
    required BookModel book,
    List<PageRouteInfo>? children,
  }) : super(
         HomeDetailRoute.name,
         args: HomeDetailRouteArgs(key: key, book: book),
         initialChildren: children,
       );

  static const String name = 'HomeDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeDetailRouteArgs>();
      return WrappedRoute(
        child: HomeDetailPage(key: args.key, book: args.book),
      );
    },
  );
}

class HomeDetailRouteArgs {
  const HomeDetailRouteArgs({this.key, required this.book});

  final Key? key;

  final BookModel book;

  @override
  String toString() {
    return 'HomeDetailRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const HomePage());
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LoginPage());
    },
  );
}

/// generated route for
/// [PaymentPage]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    Key? key,
    required PaymentModel payment,
    required BookModel book,
    List<PageRouteInfo>? children,
  }) : super(
         PaymentRoute.name,
         args: PaymentRouteArgs(key: key, payment: payment, book: book),
         initialChildren: children,
       );

  static const String name = 'PaymentRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentRouteArgs>();
      return WrappedRoute(
        child: PaymentPage(
          key: args.key,
          payment: args.payment,
          book: args.book,
        ),
      );
    },
  );
}

class PaymentRouteArgs {
  const PaymentRouteArgs({this.key, required this.payment, required this.book});

  final Key? key;

  final PaymentModel payment;

  final BookModel book;

  @override
  String toString() {
    return 'PaymentRouteArgs{key: $key, payment: $payment, book: $book}';
  }
}

/// generated route for
/// [PaymentSuccessPage]
class PaymentSuccessRoute extends PageRouteInfo<PaymentSuccessRouteArgs> {
  PaymentSuccessRoute({
    Key? key,
    required BookModel book,
    List<PageRouteInfo>? children,
  }) : super(
         PaymentSuccessRoute.name,
         args: PaymentSuccessRouteArgs(key: key, book: book),
         initialChildren: children,
       );

  static const String name = 'PaymentSuccessRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentSuccessRouteArgs>();
      return PaymentSuccessPage(key: args.key, book: args.book);
    },
  );
}

class PaymentSuccessRouteArgs {
  const PaymentSuccessRouteArgs({this.key, required this.book});

  final Key? key;

  final BookModel book;

  @override
  String toString() {
    return 'PaymentSuccessRouteArgs{key: $key, book: $book}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ProfilePage());
    },
  );
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const SearchPage());
    },
  );
}
