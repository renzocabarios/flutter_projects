import 'package:user_crud/domain/entities/index.dart';

class UserModel extends UserEntity {
  const UserModel({
    id = "",
    firstName = "",
    lastName = "",
    deleted = false,
  });

  @override
  List<Object?> get props => [id, firstName, lastName, deleted];

  static UserModel fromJson(dynamic data) {
    return UserModel(
      deleted: data["deleted"],
      firstName: data["firstName"],
      lastName: data["lastName"],
      id: data["_id"],
    );
  }
}
