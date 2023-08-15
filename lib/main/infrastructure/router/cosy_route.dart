part of 'router.dart';

abstract class CosyRoute {
  const CosyRoute();

  static String fromLoc(String loc) => '?from=$loc';

  GoRoute get route;

  Map<String, String> get pathParameters => const {};

  Map<String, String> get queryParameters => const {};

  String namedLocation(GoRouter goRouter) => goRouter.namedLocation(
        route.name ?? '',
        pathParameters: pathParameters,
        queryParameters: queryParameters,
      );

  void go(GoRouter goRouter) => goRouter.goNamed(
        route.name ?? '',
        pathParameters: pathParameters,
        queryParameters: queryParameters,
      );

  void push(GoRouter goRouter) => goRouter.pushNamed(
        route.name ?? '',
        pathParameters: pathParameters,
        queryParameters: queryParameters,
      );

  bool canPop(GoRouter goRouter) => goRouter.canPop();

  void pop(GoRouter goRouter) => goRouter.pop();

  void pushReplacement(GoRouter goRouter) => goRouter.pushReplacementNamed(
        route.name ?? '',
        pathParameters: pathParameters,
        queryParameters: queryParameters,
      );
}
