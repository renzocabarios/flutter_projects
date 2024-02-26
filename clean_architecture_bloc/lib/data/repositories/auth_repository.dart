import 'package:clean_architecture_data_layer/core/data_state.dart';
import 'package:clean_architecture_data_layer/domain/entities/index.dart';
import 'package:clean_architecture_data_layer/domain/repositories/index.dart';
import 'package:clean_architecture_data_layer/domain/sources/index.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthSource authSource;

  AuthRepositoryImpl({required this.authSource});

  @override
  Future<DataState<List<UserEntity>>> authenticate(
    String email,
    String password,
  ) async {
    try {
      final data = await authSource.authenticate(email, password);

      return DataSuccess(data);
    } catch (e) {
      return DataFailed(e);
    }
  }
}
