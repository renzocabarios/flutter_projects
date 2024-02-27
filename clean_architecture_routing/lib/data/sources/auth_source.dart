import 'package:clean_architecture_data_layer/data/models/index.dart';
import 'package:clean_architecture_data_layer/domain/entities/index.dart';
import 'package:clean_architecture_data_layer/domain/sources/index.dart';
import 'package:dio/dio.dart';

class AuthSourceImpl implements AuthSource {
  @override
  Future<List<UserEntity>> authenticate(String email, String password) async {
    final Dio dio = Dio();
    final response = await dio.post("", data: {email, password});
    List<UserEntity> data = response.data.data;
    return data.map((e) => UserModel.fromJson(response.data)).toList();
  }
}
