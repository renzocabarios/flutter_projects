import '../../core/data_state.dart';
import '../../core/network.dart';
import '../../domain/repositories/todo_repository.dart';
import '../../domain/sources/todo_source.dart';
import '../models/todo_model.dart';

class TodoRepositoryImpl extends TodoRepository {
  final TodoSource todoSource;
  TodoRepositoryImpl({required this.todoSource});

  @override
  Future<DataState<HttpResponse<TodoModel>>> getAll({
    int page = 1,
    int limit = 10,
    String filter = "{}",
    String populate = "",
  }) async {
    try {
      final response = await todoSource.getAll(
        page: page,
        limit: limit,
        filter: filter,
        populate: populate,
      );

      final List<TodoModel> data =
          response.data.map((e) => TodoModel.fromJson(e)).toList();

      return DataSuccess(
        HttpResponse<TodoModel>(
          data: data,
          message: response.message,
          status: response.status,
        ),
      );
    } catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<HttpResponse<TodoModel>>> create({
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await todoSource.create(
        body: body,
      );

      final List<TodoModel> data =
          response.data.map((e) => TodoModel.fromJson(e)).toList();

      return DataSuccess(
        HttpResponse<TodoModel>(
          data: data,
          message: response.message,
          status: response.status,
        ),
      );
    } catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<HttpResponse<TodoModel>>> delete({
    required String id,
  }) async {
    try {
      final response = await todoSource.delete(
        id: id,
      );

      final List<TodoModel> data =
          response.data.map((e) => TodoModel.fromJson(e)).toList();

      return DataSuccess(
        HttpResponse<TodoModel>(
          data: data,
          message: response.message,
          status: response.status,
        ),
      );
    } catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<HttpResponse<TodoModel>>> update({
    required String id,
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await todoSource.update(
        body: body,
        id: id,
      );

      final List<TodoModel> data =
          response.data.map((e) => TodoModel.fromJson(e)).toList();

      return DataSuccess(
        HttpResponse<TodoModel>(
          data: data,
          message: response.message,
          status: response.status,
        ),
      );
    } catch (e) {
      return DataFailed(e);
    }
  }
}
