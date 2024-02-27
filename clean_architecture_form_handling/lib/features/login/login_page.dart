import 'package:clean_architecture_data_layer/core/di.dart';
import 'package:clean_architecture_data_layer/features/login/blocs/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/index.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => getIt<LoginCubit>(),
        child: const LoginForm(),
      ),
    );
  }
}
