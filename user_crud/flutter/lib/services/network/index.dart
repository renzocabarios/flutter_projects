import 'package:dio/dio.dart';

abstract class Network {
  final Dio dio;
  Network({required this.dio});
  Future<HttpResponse> get(String uri);
  Future<HttpResponse> patch(String uri, Object body);
  Future<HttpResponse> post(String uri, Object body);
  Future<HttpResponse> delete(String uri);
}

class HttpResponse<T extends dynamic> {
  final String message;
  final String status;
  final List<T> data;

  HttpResponse({
    required this.message,
    required this.status,
    required this.data,
  });

  static HttpResponse fromJson(dynamic json) {
    return HttpResponse(
      message: json["message"] ?? "",
      status: json["status"] ?? "",
      data: json["data"] ?? [],
    );
  }
}
