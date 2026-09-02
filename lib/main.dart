import 'package:books_online/core/config/config.dart';
import 'package:flutter/material.dart';
import 'app/app.dart';
import 'core/config/env_loader.dart';

Future<void> main() async {
  await configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await EnvLoader.load();
  runApp(const App());
}
