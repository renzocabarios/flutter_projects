import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:user_crud/data/repositories/index.dart';
import 'package:user_crud/data/sources/users_source.dart';
import 'package:user_crud/domain/repositories/index.dart';
import 'package:user_crud/domain/sources/index.dart';
import 'package:user_crud/services/network/impl/network.dart';
import 'package:user_crud/services/network/index.dart';

GetIt getIt = GetIt.instance();

void resolveDependencies() {
  resolvePackages();
  resolveServices();
  resolveSources();
  resolveRepositories();
}

void resolvePackages() {
  getIt.registerSingleton<Dio>(Dio());
}

void resolveServices() {
  getIt.registerSingleton<Network>(NetworkImpl(dio: getIt.get<Dio>()));
}

void resolveSources() {
  getIt.registerLazySingleton<UserSource>(
      () => UserSourceImpl(network: getIt.get<Network>()));
}

void resolveRepositories() {
  getIt.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(userSource: getIt.get<UserSource>()));
}
