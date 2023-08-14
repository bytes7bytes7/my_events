import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'main/main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await configInjector();

  runApp(const App());
}
