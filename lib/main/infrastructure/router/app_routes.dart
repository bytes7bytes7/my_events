part of 'router.dart';

final _mainNavigatorKey = NavigatorKey();

String _getName(GoRouterState state) => state.name ?? state.uri.toString();

Map<String, Object?> _getArgs(GoRouterState state) => {
      'pathParameters': state.pathParameters,
      'queryParameters': state.uri.queryParameters,
    };

// ignore: avoid_classes_with_only_static_members
class _AppRoutes {
  const _AppRoutes._();

  static final splash = GoRoute(
    path: '/slpash',
    name: 'splash',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const SplashScreen(),
      );
    },
  );

  static final auth = GoRoute(
    path: '/auth',
    name: 'auth',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const AuthScreen(),
      );
    },
  );

  static final onboarding = GoRoute(
    path: '/onboarding',
    name: 'onboarding',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _upward,
        child: const OnboardingScreen(),
      );
    },
  );

  static final news = GoRoute(
    path: '/news',
    name: 'news',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      final id = state.pathParameters[_newsIDParam]!;

      return BottomSheetPage(
        key: state.pageKey,
        child: NewsBottomSheet(
          id: id,
        ),
      );
    },
  );

  static final main = ShellRoute(
    navigatorKey: _mainNavigatorKey,
    builder: (context, state, child) {
      return MainScreen(
        body: child,
      );
    },
    routes: [
      home,
      events,
      chat,
      account,
    ],
  );

  static final home = GoRoute(
    path: '/home',
    name: 'home',
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const HomeScreen(),
      );
    },
  );

  static final account = GoRoute(
    path: '/account',
    name: 'account',
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const AccountScreen(),
      );
    },
    routes: [
      myEvents,
      myArchivedEvents,
    ],
  );

  static final events = GoRoute(
    path: '/events',
    name: 'events',
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const Scaffold(),
      );
    },
  );

  static final chat = GoRoute(
    path: '/chat',
    name: 'chat',
    pageBuilder: (context, state) {
      return NoTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        child: const Scaffold(),
      );
    },
  );

  static final myEvents = GoRoute(
    path: 'my_events',
    name: 'my_events',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const MyEventsScreen(),
      );
    },
  );

  static final myArchivedEvents = GoRoute(
    path: 'my_archived_events',
    name: 'my_archived_events',
    parentNavigatorKey: _rootKey,
    pageBuilder: (context, state) {
      return CustomTransitionPage(
        key: state.pageKey,
        name: _getName(state),
        arguments: _getArgs(state),
        transitionsBuilder: _leftward,
        child: const MyArchivedEventsScreen(),
      );
    },
  );
}
