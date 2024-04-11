import 'package:clean_architecture/di/index.dart';
import 'package:clean_architecture/features/home/bloc/home_cubit.dart';
import 'package:clean_architecture/routes/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'ui/todo_list.dart';

// TODO: Refresh function
// TODO: Infinitie scroll
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) {
        return getIt.get<HomeCubit>()..init();
      },
      child: Scaffold(
        body: const SingleChildScrollView(
          child: TodoList(),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            context.push(Routes.create);
          },
        ),
      ),
    );
  }
}
