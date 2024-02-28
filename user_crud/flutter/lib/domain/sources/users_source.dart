import 'package:user_crud/domain/entities/index.dart';
import 'package:user_crud/services/network/index.dart';

abstract class UserSource {
  final Network network;

  UserSource({required this.network});

  Future<HttpResponse<UserEntity>> getUsers();
  Future<HttpResponse<UserEntity>> getUserById(String id);
  Future<HttpResponse<UserEntity>> updateUser(String id, Object request);
  Future<HttpResponse<UserEntity>> addUser(Object request);
  Future<HttpResponse<UserEntity>> deleteUser(String id);
}
