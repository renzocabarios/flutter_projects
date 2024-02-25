import 'package:clean_architecture_data_layer/core/data_state.dart';
import 'package:clean_architecture_data_layer/domain/entities/index.dart';

abstract class UserRepository {
  Future<DataState<List<UserEntity>>> getUsers();
}
