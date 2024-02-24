import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Second Page"),
            ElevatedButton(
              onPressed: () {
                context.go("/");
              },
              child: const Text("Go to First"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go("/last");
              },
              child: const Text("Go to Last"),
            )
          ],
        ),
      ),
    );
  }
}
