import 'package:equatable/equatable.dart';

abstract class UserEntity extends Equatable {
  final String? id;
  final String? firstName;
  final String? lastName;
  final bool? deleted;

  const UserEntity({
    this.id = "",
    this.firstName = "",
    this.lastName = "",
    this.deleted = false,
  });
}
