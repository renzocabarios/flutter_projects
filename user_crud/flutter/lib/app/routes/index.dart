import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:user_crud/pages/create/create_page.dart';
import 'package:user_crud/pages/edit_page.dart';
import 'package:user_crud/pages/home/home_page.dart';

GoRouter route(BuildContext context, String? initialLocation) {
  return GoRouter(
    initialLocation: initialLocation ?? Routes.home,
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: Routes.edit,
        builder: (context, state) => const EditPage(),
      ),
      GoRoute(
        path: Routes.create,
        builder: (context, state) => const CreatePage(),
      ),
    ],
  );
}

class Routes {
  static const home = "/home";
  static const edit = "/edit/:id";
  static const create = "/create";
}
