import 'package:flutter/material.dart';
import 'app/app.dart';
import 'core/config/env_loader.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvLoader.load();
  runApp(const App());
}

