import 'package:clean_architecture_data_layer/core/data_state.dart';
import 'package:clean_architecture_data_layer/domain/entities/index.dart';
import 'package:clean_architecture_data_layer/domain/repositories/index.dart';
import 'package:clean_architecture_data_layer/domain/sources/user_source.dart';

class UserRepositoryImpl extends UserRepository {
  final UserSource userSource;

  UserRepositoryImpl({required this.userSource});

  @override
  Future<DataState<List<UserEntity>>> getUsers() async {
    try {
      final data = await userSource.getUsers();

      return DataSuccess(data);
    } catch (e) {
      return DataFailed(e);
    }
  }
}
