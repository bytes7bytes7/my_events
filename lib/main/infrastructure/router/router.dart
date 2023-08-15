import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../../../utils/typedef.dart';
import '../../presentation/presentation.dart';
import 'pages/pages.dart';

part 'app_routes.dart';
part 'cosy_route.dart';
part 'routes.dart';
part 'transition.dart';
part 'keys.dart';

final _rootKey = NavigatorKey();

@module
abstract class RouterModule {
  @singleton
  NavigatorKey get rootKey => _rootKey;

  @singleton
  GoRouter router(
    NavigatorKey key,
  ) {
    return GoRouter(
      navigatorKey: key,
      initialLocation: const SplashRoute().route.path,
      routes: [
        const SplashRoute().route,
        const AuthRoute().route,
        const OnboardingRoute().route,
        const MainRoute().route,
        const NewsRoute(id: '').route,
      ],
    );
  }
}
