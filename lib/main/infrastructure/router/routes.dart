part of 'router.dart';

class SplashRoute extends CosyRoute {
  const SplashRoute();

  @override
  GoRoute get route => _AppRoutes.splash;
}

class AuthRoute extends CosyRoute {
  const AuthRoute();

  @override
  GoRoute get route => _AppRoutes.auth;
}

class OnboardingRoute extends CosyRoute {
  const OnboardingRoute();

  @override
  GoRoute get route => _AppRoutes.onboarding;
}

class NewsRoute extends CosyRoute {
  const NewsRoute({
    required this.id,
  });

  final String id;

  @override
  Map<String, String> get pathParameters => {
        _newsIDParam: id,
      };

  @override
  GoRoute get route => _AppRoutes.news;
}

class MainRoute {
  const MainRoute();

  ShellRoute get route => _AppRoutes.main;
}

class HomeRoute extends CosyRoute {
  const HomeRoute();

  @override
  GoRoute get route => _AppRoutes.home;
}

class AccountRoute extends CosyRoute {
  const AccountRoute();

  @override
  GoRoute get route => _AppRoutes.account;
}

class EventsRoute extends CosyRoute {
  const EventsRoute();

  @override
  GoRoute get route => _AppRoutes.events;
}

class ChatRoute extends CosyRoute {
  const ChatRoute();

  @override
  GoRoute get route => _AppRoutes.chat;
}

class MyEventsRoute extends CosyRoute {
  const MyEventsRoute();

  @override
  GoRoute get route => _AppRoutes.myEvents;
}

class MyArchivedEventsRoute extends CosyRoute {
  const MyArchivedEventsRoute();

  @override
  GoRoute get route => _AppRoutes.myArchivedEvents;
}
