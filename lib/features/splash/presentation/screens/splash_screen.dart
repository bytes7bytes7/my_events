import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Assets.images.logo.image(),
        ),
      ),
    );
  }
}
