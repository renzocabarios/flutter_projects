import 'package:clean_architecture_data_layer/core/data_state.dart';
import 'package:clean_architecture_data_layer/domain/entities/index.dart';
import 'package:clean_architecture_data_layer/domain/repositories/index.dart';

class UserRepositoryImpl extends UserRepository {
  @override
  Future<DataState<List<UserEntity>>> getUsers() {
    // TODO: Do http call
    throw UnimplementedError();
  }
}
