import 'package:equatable/equatable.dart';

class TodoEntity extends Equatable {
  final String? id;
  final String? name;
  final String? updatedAt;
  final String? createdAt;
  final bool? deleted;

  const TodoEntity({
    this.id = "",
    this.name = "",
    this.updatedAt = "",
    this.createdAt = "",
    this.deleted = false,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        updatedAt,
        createdAt,
        deleted,
      ];
}
