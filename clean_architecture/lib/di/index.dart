import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../core/network.dart';
import '../data/repositories/todo_repository.dart';
import '../data/sources/todo_source.dart';
import '../domain/repositories/todo_repository.dart';
import '../domain/sources/todo_source.dart';

final getIt = GetIt.I;

void resolveDependencies() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<Network>(() => Network(dio: getIt.get<Dio>()));
  registerSources();
  registerRepositories();
}

void registerRepositories() {
  getIt.registerLazySingleton<TodoRepository>(() => TodoRepositoryImpl(
        todoSource: getIt.get<TodoSource>(),
      ));
}

void registerSources() {
  getIt.registerLazySingleton<TodoSource>(
      () => TodoSourceImpl(network: getIt.get<Network>()));
}
