/// API endpoint constants
class ApiEndpoints {
  ApiEndpoints._();
  static const String baseUrl = 'http://localhost:8000';

  // Auth
  static const String register = '/auth/register';
  static const String login = '/auth/login';
  static const String refreshToken = '/auth/refresh-token';
  static const String logout = '/auth/logout';
  static const String changePassword = '/auth/change-password';

  // User
  static const String profile = '/user/profile';
  static const String updateProfile = '/user/profile';

  // Example endpoints - replace with your actual API
  static const String posts = '/posts';
  static String postDetail(int id) => '/posts/$id';

  //api paypal
  static const String paypal = 'https://mockgateway.com/api/base/paypal-xqkjwe/v2/checkout/orders';

  //payment
  static const String paymentBase = 'https://portal.phajay.co/v1/api/payment';

  static const String paymentBcel = '/payment/bcel';

  static const String paymentJdb = '/payment/jdb';

  static const String paymentIb = '$paymentBase/generate-ib-qr';

  // book
  static const String book = '/book';
  static const String category = '/category';
  static const String searchBooks = '/book/search';
}
