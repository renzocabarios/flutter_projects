import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/create/page.dart';
import '../features/edit/page.dart';
import '../features/home/page.dart';

GoRouter router(BuildContext context) => GoRouter(
      initialLocation: Routes.home,
      routes: [
        GoRoute(
          path: Routes.create,
          builder: (context, state) {
            return const CreatePage();
          },
        ),
        GoRoute(
          path: Routes.home,
          builder: (context, state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: "${Routes.edit}/:id",
          builder: (context, state) {
            return EditPage(
              id: state.pathParameters["id"] ?? "",
            );
          },
        ),
      ],
    );

class Routes {
  static const String home = "/home";
  static const String create = "/create";
  static const String edit = "/edit";
}
