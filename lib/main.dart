import 'package:flutter/material.dart';

import 'main/main.dart';

Future<void> main() async {
  await configInjector();

  runApp(const App());
}
