import '../../domain/entities/todo_entity.dart';

class TodoModel extends TodoEntity {
  const TodoModel({
    super.id = "",
    super.name = "",
    super.updatedAt = "",
    super.createdAt = "",
    super.deleted = false,
  }) : super();

  factory TodoModel.fromJson(Map<String, dynamic> map) {
    final temp = TodoModel(
      id: map["_id"] ?? "",
      name: map["name"] ?? "",
      updatedAt: map["updatedAt"] ?? "",
      createdAt: map["createdAt"] ?? "",
      deleted: map["deleted"] ?? false,
    );

    return temp;
  }

  bool get isEmpty => id == "";

  static Map<String, dynamic> toJson(TodoModel data) {
    return {
      "id": data.id ?? "",
      "name": data.name ?? "",
      "updatedAt": data.updatedAt ?? "",
      "createdAt": data.createdAt ?? "",
      "deleted": data.deleted ?? false,
    };
  }

  static const empty = TodoModel(
    id: "",
    name: "",
    updatedAt: "",
    createdAt: "",
    deleted: false,
  );
}
