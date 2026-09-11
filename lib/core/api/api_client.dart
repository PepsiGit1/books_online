import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import '../config/app_config.dart';
import '../constants/app_constants.dart';
import '../storage/local_storage.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logger_interceptor.dart';
import 'interceptors/retry_interceptor.dart';

@LazySingleton()
class ApiClient {
  ApiClient(this.config) {
    _initFuture = _initializeDio();
  }

  final AppConfig config;

  late final Dio dio;
  late final Future<void> _initFuture;

  Future<void> _initializeDio() async {
    dio = Dio(
      BaseOptions(
        baseUrl: config.apiBaseUrl,
        connectTimeout: Duration(milliseconds: AppConstants.connectTimeout),
        receiveTimeout: Duration(milliseconds: AppConstants.receiveTimeout),
        sendTimeout: Duration(milliseconds: AppConstants.sendTimeout),
        headers: {'Content-Type': 'application/json', 'Accept': 'application/json'},
      ),
    );

    // Persistent HTTP-only cookie storage
    final appDocDir = await getApplicationDocumentsDirectory();

    final cookieJar = PersistCookieJar(ignoreExpires: false, storage: FileStorage('${appDocDir.path}/cookies'));

    // CookieManager MUST use the same Dio instance
    dio.interceptors.add(CookieManager(cookieJar));

    // Local storage
    final localStorage = await LocalStorage.getInstance();

    dio.interceptors.addAll([AuthInterceptor(localStorage), RetryInterceptor(), LoggerInterceptor()]);
  }

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters, Options? options}) async {
    await _initFuture;

    return dio.get(path, queryParameters: queryParameters, options: options);
  }

  Future<Response> post(String path, {dynamic data, Map<String, dynamic>? queryParameters, Options? options}) async {
    await _initFuture;

    return dio.post(path, data: data, queryParameters: queryParameters, options: options);
  }

  Future<Response> put(String path, {dynamic data, Map<String, dynamic>? queryParameters, Options? options}) async {
    await _initFuture;

    return dio.put(path, data: data, queryParameters: queryParameters, options: options);
  }

  Future<Response> delete(String path, {dynamic data, Map<String, dynamic>? queryParameters, Options? options}) async {
    await _initFuture;

    return dio.delete(path, data: data, queryParameters: queryParameters, options: options);
  }
}
