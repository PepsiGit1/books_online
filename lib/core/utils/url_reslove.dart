// lib/core/utils/url_resolver.dart
import 'package:books_online/core/constants/api_endpoints.dart';

class UrlResolver {
  static String resolve(String source) {
    if (source.startsWith('http://') || source.startsWith('https://')) {
      return source;
    }
    return '${ApiEndpoints.baseUrl}$source';
  }
}
