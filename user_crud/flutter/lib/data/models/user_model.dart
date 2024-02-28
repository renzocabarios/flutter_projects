import 'package:user_crud/domain/entities/index.dart';

class UserModel extends UserEntity {
  const UserModel({super.id, super.deleted, super.firstName, super.lastName})
      : super();

  @override
  List<Object?> get props => [id, firstName, lastName, deleted];

  factory UserModel.fromJson(Map<String, dynamic> data) {
    return UserModel(
      deleted: data["deleted"],
      firstName: data["firstName"],
      lastName: data["lastName"],
      id: data["_id"],
    );
  }
}
