import 'package:books_online/core/config/config.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;
@InjectableInit()
Future<void> configureDependencies() async {
  getIt.init();
}
