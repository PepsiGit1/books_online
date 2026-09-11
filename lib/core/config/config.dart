import 'package:books_online/core/config/config.config.dart';
import 'package:books_online/core/storage/local_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureDependencies() async {
  await getIt.init();

  if (!getIt.isRegistered<LocalStorage>()) {
    final localStorage = await LocalStorage.getInstance();

    getIt.registerSingleton<LocalStorage>(localStorage);
  }
}
