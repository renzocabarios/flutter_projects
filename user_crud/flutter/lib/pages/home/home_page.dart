import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:user_crud/app/routes/index.dart';
import 'package:user_crud/di.dart';
import 'package:user_crud/pages/home/blocs/home_cubit.dart';
import 'package:user_crud/pages/home/ui/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<HomeCubit>(
        create: (context) {
          final cubit = getIt.get<HomeCubit>();
          cubit.init();
          return cubit;
        },
        child: const HomeView(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go(Routes.create);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
