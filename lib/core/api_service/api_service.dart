import 'package:betting_game_app/config/api_constant/api_constant.dart';
import 'package:dio/dio.dart';

class DioService {
  final Dio _dio = Dio();

  DioService() {
    _dio.options.baseUrl = ApiConstant.localBaseUrl; // Change this to your API's base URL
    _dio.options.connectTimeout = Duration(seconds: 5000); // 5 seconds
    _dio.options.receiveTimeout = Duration(seconds: 5000); // 3 seconds
  }

  // GET request
  Future<Response> getRequest(String endpoint, {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get(endpoint, queryParameters: queryParams);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // POST request
  Future<Response> postRequest(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // PUT request
  Future<Response> putRequest(String endpoint, Map<String, dynamic> data) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  // DELETE request
  Future<Response> deleteRequest(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.delete(endpoint, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
