import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../features/features.dart';
import '../../themes/light/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => GetIt.instance.get<AuthBloc>()
        ..add(const AuthEvent.checkIfIsLoggedIn()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: GetIt.instance.get<GoRouter>(),
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
