import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Last Page"),
            ElevatedButton(
              onPressed: () {
                context.go("/");
              },
              child: const Text("Go to First"),
            ),
            ElevatedButton(
              onPressed: () {
                context.go("/second");
              },
              child: const Text("Go to Second"),
            )
          ],
        ),
      ),
    );
  }
}
