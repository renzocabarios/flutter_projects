import 'package:clean_architecture_data_layer/domain/entities/index.dart';

abstract class AuthSource {
  Future<List<UserEntity>> authenticate(String email, String password);
}
