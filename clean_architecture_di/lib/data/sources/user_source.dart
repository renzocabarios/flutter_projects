import 'package:clean_architecture_data_layer/data/models/index.dart';
import 'package:clean_architecture_data_layer/domain/entities/index.dart';
import 'package:clean_architecture_data_layer/domain/sources/user_source.dart';
import 'package:dio/dio.dart';

class UserSourceImpl implements UserSource {
  @override
  Future<List<UserEntity>> getUsers() async {
    final Dio dio = Dio();
    final response = await dio.get("");
    List<UserEntity> data = response.data;
    return data.map((e) => UserModel.fromJson(response.data)).toList();
  }
}
