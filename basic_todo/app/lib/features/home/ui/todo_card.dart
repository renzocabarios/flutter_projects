import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/models/todo_model.dart';
import '../../../routes/index.dart';
import 'delete_button.dart';

class TodoCard extends StatelessWidget {
  final TodoModel todo;
  const TodoCard({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(todo.name ?? ""),
        Row(
          children: [
            DeleteButton(
              id: todo.id ?? "",
            ),
            IconButton(
              onPressed: () {
                context.push("${Routes.edit}/${todo.id}");
              },
              icon: const Icon(Icons.edit),
            ),
          ],
        )
      ],
    );
  }
}
