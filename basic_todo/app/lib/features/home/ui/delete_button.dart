import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_cubit.dart';

class DeleteButton extends StatelessWidget {
  final String id;
  const DeleteButton({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return IconButton(
        onPressed: () {
          context.read<HomeCubit>().delete(id);
        },
        icon: const Icon(Icons.delete),
      );
    });
  }
}
