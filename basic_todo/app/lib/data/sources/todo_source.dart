import '../../core/network.dart';
import '../../domain/sources/todo_source.dart';

class TodoSourceImpl implements TodoSource {
  final Network network;

  TodoSourceImpl({
    required this.network,
  });

  @override
  Future<HttpResponse> create({required Map<String, dynamic> body}) async {
    return await network.post('todos', body);
  }

  @override
  Future<HttpResponse> delete({required String id}) async {
    return await network.delete('todos/$id');
  }

  @override
  Future<HttpResponse> getAll({
    int page = 1,
    int limit = 10,
    String filter = "{}",
    String populate = "",
  }) async {
    return await network
        .get('todos?page=$page&limit=$limit&filter=$filter&populate=$populate');
  }

  @override
  Future<HttpResponse> update({
    required String id,
    required Map<String, dynamic> body,
  }) async {
    return await network.patch('todos/$id', body);
  }
}
