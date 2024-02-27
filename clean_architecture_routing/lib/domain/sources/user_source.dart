import 'package:clean_architecture_data_layer/domain/entities/index.dart';

abstract class UserSource {
  Future<List<UserEntity>> getUsers();
}
