import '../../core/network.dart';

abstract class TodoSource {
  Future<HttpResponse> getAll({
    int page = 1,
    int limit = 10,
    String filter = "{}",
    String populate = "",
  });

  Future<HttpResponse> create({required Map<String, dynamic> body});

  Future<HttpResponse> update({
    required String id,
    required Map<String, dynamic> body,
  });

  Future<HttpResponse> delete({
    required String id,
  });
}
