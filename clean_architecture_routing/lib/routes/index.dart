import 'package:clean_architecture_data_layer/features/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter router(BuildContext context, String? initialLocation) => GoRouter(
      routes: [
        GoRoute(
          path: Routes.login,
          builder: (context, state) {
            return const LoginPage();
          },
        ),
        GoRoute(
          path: Routes.register,
          builder: (context, state) {
            return const RegisterPage();
          },
        ),
      ],
      initialLocation: initialLocation ?? Routes.login,
    );

class Routes {
  static const login = "/login";
  static const register = "/register";
}
