import 'package:clean_architecture_data_layer/features/login/blocs/login_cubit.dart';
import 'package:clean_architecture_data_layer/shared/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Login"),
        const _EmailInput(),
        const _PasswordInput(),
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

class _EmailInput extends StatelessWidget {
  const _EmailInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return FieldInput(
          onChanged: (value) => context.read<LoginCubit>().emailChanged(value),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return FieldInput(
          onChanged: (value) =>
              context.read<LoginCubit>().passwordChanged(value),
        );
      },
    );
  }
}
