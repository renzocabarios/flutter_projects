import 'package:clean_architecture/features/create/bloc/create_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameInput extends StatelessWidget {
  const NameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateCubit, CreateState>(builder: (context, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Name"),
          TextField(
            onChanged: (value) {
              context.read<CreateCubit>().nameChange(value);
            },
          ),
        ],
      );
    });
  }
}
