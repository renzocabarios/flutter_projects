import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:user_crud/app/routes/index.dart';
import 'package:user_crud/di.dart';
import 'package:user_crud/pages/create/blocs/create_cubit.dart';
import 'package:user_crud/pages/create/ui/index.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<CreateCubit>(
        create: (context) {
          return getIt.get<CreateCubit>();
        },
        child: const CreateView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go(Routes.home);
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
