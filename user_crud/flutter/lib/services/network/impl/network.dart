import 'package:user_crud/services/network/index.dart';

class NetworkImpl extends Network {
  NetworkImpl({required super.dio});

  @override
  Future<HttpResponse> delete(String uri) async {
    final response = await dio.delete(uri);
    return HttpResponse.fromJson(response.data);
  }

  @override
  Future<HttpResponse> get(String uri) async {
    final response = await dio.delete(uri);

    return HttpResponse.fromJson(response.data);
  }

  @override
  Future<HttpResponse> patch(String uri, Object body) async {
    final response = await dio.delete(uri);
    return HttpResponse.fromJson(response.data);
  }

  @override
  Future<HttpResponse> post(String uri, Object body) async {
    final response = await dio.delete(uri);
    return HttpResponse.fromJson(response.data);
  }
}
