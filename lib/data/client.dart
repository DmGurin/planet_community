import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:planet_community/source/constants.dart';

class Client {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  )..interceptors.add(Logging());

  Future<String> getMethod(String endpoint) async {
    final response = await http.get(Uri.parse(baseUrl + endpoint));
    return utf8.decode(response.bodyBytes);
  }

  Future<String> getMethodDio(String endpoint) async {
    final response = await _dio.get(endpoint);
    return json.encode(response.data);
  }
}

class Logging extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: $baseUrl${options.path}');
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
      'RESPONSE[${response.statusCode}] => PATH: $baseUrl${response.requestOptions.path}',
    );
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
      'ERROR[${err.response?.statusCode}] => PATH: $baseUrl${err.requestOptions.path}',
    );
    return super.onError(err, handler);
  }
}