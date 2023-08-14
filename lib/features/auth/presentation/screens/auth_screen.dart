import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../themes/extensions/extensions.dart';
import '../../../common/application/blocs/auth/auth_bloc.dart';
import '../../../common/presentation/widgets/loading_overlay.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final elevatedButtonTX = theme.extension<ElevatedButtonTX>()!;
    final bloc = context.read<AuthBloc>();
    final scaffoldMsg = ScaffoldMessenger.of(context);

    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.error.isNotEmpty) {
              scaffoldMsg.showSnackBar(
                SnackBar(
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Assets.images.logo.image(),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          bloc.add(const AuthEvent.logInToAccount());
                        },
                        child: const Text('Войти через ЕЛК'),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        style: elevatedButtonTX.secondary,
                        onPressed: () {
                          bloc.add(const AuthEvent.logInAnonymously());
                        },
                        child: const Text('Войти без авторизации'),
                      ),
                    ],
                  ),
                ),
                if (state.isLoading) const LoadingOverlay(),
              ],
            );
          },
        ),
      ),
    );
  }
}
