import 'package:clean_architecture_data_layer/data/repositories/index.dart';
import 'package:clean_architecture_data_layer/data/sources/index.dart';
import 'package:clean_architecture_data_layer/domain/repositories/index.dart';
import 'package:clean_architecture_data_layer/domain/sources/index.dart';
import 'package:clean_architecture_data_layer/features/login/blocs/login_cubit.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.I;

void initDependencies() {
  registerSources();
  registerRepositories();
  registerCubits();
}

void registerSources() {
  getIt.registerLazySingleton<UserSource>(() => UserSourceImpl());
  getIt.registerLazySingleton<AuthSource>(() => AuthSourceImpl());
}

void registerRepositories() {
  getIt.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(userSource: getIt.get<UserSource>()));

  getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(authSource: getIt.get<AuthSource>()));
}

void registerCubits() {
  getIt.registerFactory<LoginCubit>(() => LoginCubit());
}
