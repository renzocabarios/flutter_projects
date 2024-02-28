import 'package:user_crud/core/data_state.dart';
import 'package:user_crud/domain/entities/index.dart';
import 'package:user_crud/domain/sources/index.dart';

abstract class UserRepository {
  final UserSource userSource;

  UserRepository({required this.userSource});

  Future<DataState<List<UserEntity>>> getUsers();
  Future<DataState<List<UserEntity>>> getUserById(String id);
  Future<DataState<List<UserEntity>>> updateUser(String id, Object request);
  Future<DataState<List<UserEntity>>> addUser(Map<String, dynamic> request);
  Future<DataState<List<UserEntity>>> deleteUser(String id);
}
