import 'package:clean_architecture_data_layer/domain/entities/index.dart';

class UserModel extends UserEntity {
  const UserModel({super.name});

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(name: map["name"] ?? "");
  }

  factory UserModel.fromEntity(UserEntity entity) {
    return UserModel(name: entity.name);
  }
}
