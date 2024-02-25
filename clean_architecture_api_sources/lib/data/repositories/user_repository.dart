import 'package:clean_architecture_data_layer/core/data_state.dart';
import 'package:clean_architecture_data_layer/data/sources/user_source.dart';
import 'package:clean_architecture_data_layer/domain/entities/index.dart';
import 'package:clean_architecture_data_layer/domain/repositories/index.dart';
import 'package:clean_architecture_data_layer/domain/sources/user_source.dart';

class UserRepositoryImpl extends UserRepository {
  @override
  Future<DataState<List<UserEntity>>> getUsers() async {
    try {
      UserSource userSource = UserSourceImpl();
      final data = await userSource.getUsers();

      return DataSuccess(data);
    } catch (e) {
      return DataFailed(e);
    }
  }
}
