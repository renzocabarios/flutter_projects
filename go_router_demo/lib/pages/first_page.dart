import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("First Page"),
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
