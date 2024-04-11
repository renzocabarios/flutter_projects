import 'package:clean_architecture/data/models/todo_model.dart';

import '../../core/data_state.dart';
import '../../core/network.dart';

abstract class TodoRepository {
  Future<DataState<HttpResponse<TodoModel>>> getAll({
    int page = 1,
    int limit = 10,
    String filter = "{}",
    String populate = "",
  });

  Future<DataState<HttpResponse<TodoModel>>> create({
    required Map<String, dynamic> body,
  });

  Future<DataState<HttpResponse<TodoModel>>> update({
    required String id,
    required Map<String, dynamic> body,
  });

  Future<DataState<HttpResponse<TodoModel>>> delete({
    required String id,
  });
}
