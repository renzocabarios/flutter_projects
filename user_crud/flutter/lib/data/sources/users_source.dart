import 'package:user_crud/data/models/index.dart';
import 'package:user_crud/domain/entities/index.dart';
import 'package:user_crud/domain/sources/index.dart';
import 'package:user_crud/services/network/index.dart';

class UserSourceImpl extends UserSource {
  UserSourceImpl({required super.network});

  @override
  Future<HttpResponse<UserEntity>> addUser(Object request) async {
    final response = await network.post("users", request);
    final mapped =
        response.data.map<UserEntity>((e) => UserModel.fromJson(e)).toList();

    return HttpResponse<UserEntity>(
      data: mapped,
      message: response.message,
      status: response.status,
    );
  }

  @override
  Future<HttpResponse<UserEntity>> deleteUser(String id) async {
    final response = await network.delete("users/$id");
    final mapped =
        response.data.map<UserEntity>((e) => UserModel.fromJson(e)).toList();

    return HttpResponse<UserEntity>(
      data: mapped,
      message: response.message,
      status: response.status,
    );
  }

  @override
  Future<HttpResponse<UserEntity>> getUserById(String id) async {
    final response = await network.get("users/$id");
    final mapped =
        response.data.map<UserEntity>((e) => UserModel.fromJson(e)).toList();

    return HttpResponse<UserEntity>(
      data: mapped,
      message: response.message,
      status: response.status,
    );
  }

  @override
  Future<HttpResponse<UserEntity>> getUsers() async {
    final response = await network.get("users");
    final mapped =
        response.data.map<UserEntity>((e) => UserModel.fromJson(e)).toList();

    return HttpResponse<UserEntity>(
      data: mapped,
      message: response.message,
      status: response.status,
    );
  }

  @override
  Future<HttpResponse<UserEntity>> updateUser(String id, Object request) async {
    final response = await network.patch("users/$id", request);
    final mapped =
        response.data.map<UserEntity>((e) => UserModel.fromJson(e)).toList();

    return HttpResponse<UserEntity>(
      data: mapped,
      message: response.message,
      status: response.status,
    );
  }
}
