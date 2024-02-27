import 'package:clean_architecture_data_layer/core/di.dart';
import 'package:clean_architecture_data_layer/routes/index.dart';
import 'package:flutter/material.dart';

void main() {
  initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppView();
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router(context, null),
    );
  }
}
