import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:user_crud/app/routes/index.dart';
import 'package:user_crud/pages/create/blocs/create_cubit.dart';

class CreateView extends StatelessWidget {
  const CreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateCubit, CreateState>(
      listener: (context, state) {
        if (state.message == "Create user success") {
          context.go(Routes.home);
        }
      },
      child: Column(
        children: [
          const _FirstNameField(),
          const _LastNameField(),
          ElevatedButton(
            onPressed: () {
              context.read<CreateCubit>().addUser();
            },
            child: const Text("Create User"),
          )
        ],
      ),
    );
  }
}

class _FirstNameField extends StatelessWidget {
  const _FirstNameField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateCubit, CreateState>(builder: (context, state) {
      return TextField(
        onChanged: (value) {
          context.read<CreateCubit>().firstNameChanged(value);
        },
      );
    });
  }
}

class _LastNameField extends StatelessWidget {
  const _LastNameField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateCubit, CreateState>(builder: (context, state) {
      return TextField(
        onChanged: (value) {
          context.read<CreateCubit>().lastNameChanged(value);
        },
      );
    });
  }
}
