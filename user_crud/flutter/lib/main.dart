import 'package:flutter/material.dart';
import 'package:user_crud/di.dart';

import 'app/index.dart';

void main() {
  resolveDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
