import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// TODO: Add functionality
class EditPage extends StatelessWidget {
  final String id;
  const EditPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Name"),
                TextField(),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Create Todo"),
            )
          ],
        ),
      ),
    );
  }
}
