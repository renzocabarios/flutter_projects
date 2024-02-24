import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/pages/first_page.dart';
import 'package:go_router_demo/pages/last_page.dart';
import 'package:go_router_demo/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}

final router = GoRouter(routes: [
  GoRoute(path: "/", builder: (context, state) => const FirstPage()),
  GoRoute(path: "/second", builder: (context, state) => const SecondPage()),
  GoRoute(path: "/last", builder: (context, state) => const LastPage()),
]);
