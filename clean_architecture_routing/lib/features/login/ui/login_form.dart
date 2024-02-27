import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Login"),
        const TextField(),
        ElevatedButton(
          onPressed: () {
            context.go("/register");
          },
          child: const Text("Login"),
        )
      ],
    );
  }
}
