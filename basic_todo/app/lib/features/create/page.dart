import 'package:clean_architecture/di/index.dart';
import 'package:clean_architecture/features/create/bloc/create_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'ui/name_input.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateCubit>(
      create: (_) {
        return getIt.get<CreateCubit>();
      },
      child: const CreateView(),
    );
  }
}

class CreateView extends StatelessWidget {
  const CreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateCubit, CreateState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(Icons.chevron_left),
                    ),
                  ],
                ),
                const NameInput(),
                ElevatedButton(
                  onPressed: () {
                    context.read<CreateCubit>().onCreate();
                  },
                  child: const Text("Create Todo"),
                )
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        if (state.success!) {
          context.pop();
        }
      },
    );
  }
}
