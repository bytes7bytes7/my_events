import 'package:flutter/material.dart';

import 'main/main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configInjector();

  runApp(const App());
}
