import 'package:user_crud/core/data_state.dart';
import 'package:user_crud/domain/entities/index.dart';
import 'package:user_crud/domain/repositories/index.dart';
import 'package:user_crud/services/network/index.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl({required super.userSource});

  @override
  Future<DataState<List<UserEntity>>> addUser(Object request) async {
    try {
      HttpResponse<UserEntity> data = await userSource.addUser(request);
      return DataSuccess<List<UserEntity>>(
        data.data,
        data.message,
        data.status,
      );
    } catch (e) {
      return DataError<List<UserEntity>>(
        e,
        "Something Went Wrong",
        "failed",
      );
    }
  }

  @override
  Future<DataState<List<UserEntity>>> deleteUser(String id) async {
    try {
      HttpResponse<UserEntity> data = await userSource.deleteUser(id);
      return DataSuccess<List<UserEntity>>(
        data.data,
        data.message,
        data.status,
      );
    } catch (e) {
      return DataError<List<UserEntity>>(
        e,
        "Something Went Wrong",
        "failed",
      );
    }
  }

  @override
  Future<DataState<List<UserEntity>>> getUserById(String id) async {
    try {
      HttpResponse<UserEntity> data = await userSource.getUserById(id);
      return DataSuccess<List<UserEntity>>(
        data.data,
        data.message,
        data.status,
      );
    } catch (e) {
      return DataError<List<UserEntity>>(
        e,
        "Something Went Wrong",
        "failed",
      );
    }
  }

  @override
  Future<DataState<List<UserEntity>>> getUsers() async {
    try {
      HttpResponse<UserEntity> data = await userSource.getUsers();
      return DataSuccess<List<UserEntity>>(
        data.data,
        data.message,
        data.status,
      );
    } catch (e) {
      return DataError<List<UserEntity>>(
        e,
        "Something Went Wrong",
        "failed",
      );
    }
  }

  @override
  Future<DataState<List<UserEntity>>> updateUser(
      String id, Object request) async {
    try {
      HttpResponse<UserEntity> data = await userSource.updateUser(id, request);
      return DataSuccess<List<UserEntity>>(
        data.data,
        data.message,
        data.status,
      );
    } catch (e) {
      return DataError<List<UserEntity>>(
        e,
        "Something Went Wrong",
        "failed",
      );
    }
  }
}
