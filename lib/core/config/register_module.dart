import 'package:books_online/core/storage/local_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();

  @preResolve
  Future<LocalStorage> get localStorage => LocalStorage.getInstance();
}
