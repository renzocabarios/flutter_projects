import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Register"),
        const TextField(),
        ElevatedButton(
          onPressed: () {
            context.go("/login");
          },
          child: const Text("Register"),
        )
      ],
    );
  }
}
