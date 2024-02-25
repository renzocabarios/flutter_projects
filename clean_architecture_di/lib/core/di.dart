import 'package:clean_architecture_data_layer/data/repositories/index.dart';
import 'package:clean_architecture_data_layer/data/sources/index.dart';
import 'package:clean_architecture_data_layer/domain/repositories/index.dart';
import 'package:clean_architecture_data_layer/domain/sources/index.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.I;

void initDependencies() {
  registerSources();
  registerRepositories();
}

void registerSources() {
  getIt.registerLazySingleton<UserSource>(() => UserSourceImpl());
}

void registerRepositories() {
  getIt.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(userSource: getIt.get<UserSource>()));
}
