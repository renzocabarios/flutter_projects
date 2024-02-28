import 'package:user_crud/services/network/index.dart';

class NetworkImpl extends Network {
  static const String url = "http://192.168.100.3:9000/api/v1/";
  NetworkImpl({required super.dio});

  @override
  Future<HttpResponse> delete(String uri) async {
    final response = await dio.delete("$url$uri");
    return HttpResponse.fromJson(response.data);
  }

  @override
  Future<HttpResponse> get(String uri) async {
    final response = await dio.get("$url$uri");
    return HttpResponse.fromJson(response.data);
  }

  @override
  Future<HttpResponse> patch(String uri, Object body) async {
    final response = await dio.patch("$url$uri", data: body);
    return HttpResponse.fromJson(response.data);
  }

  @override
  Future<HttpResponse> post(String uri, Object body) async {
    final response = await dio.post("$url$uri", data: body);
    return HttpResponse.fromJson(response.data);
  }
}
