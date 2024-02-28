import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_crud/domain/entities/index.dart';
import 'package:user_crud/pages/home/blocs/home_cubit.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Column(
        children: state.users != null
            ? state.users!
                .map(
                  (e) => UserCard(user: e),
                )
                .toList()
            : [],
      );
    });
  }
}

class UserCard extends StatelessWidget {
  final UserEntity user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('${user.firstName!} ${user.lastName!}'),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {
                if (user.id != null) {
                  context.read<HomeCubit>().deleteUser(user.id!);
                }
              },
              icon: const Icon(Icons.delete),
            ),
          ],
        )
      ],
    );
  }
}
