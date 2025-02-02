import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://api.sportmonks.com/v3/';
  final Dio _dio;
  ApiService({
    required Dio dio,
  }) : _dio = dio;

  Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  }) async {
    var response = await _dio.get(
      '$_baseUrl$endPoint',
      options: Options(
        headers: headers,
      ),
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
