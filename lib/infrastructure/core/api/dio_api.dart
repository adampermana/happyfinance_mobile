import 'package:dio/dio.dart';

class DioApi {
  static Dio init() {
    final option = BaseOptions(
      headers: {
        'Accept': 'application/json',
      },
      baseUrl: 'https://api.example.com',
      validateStatus: (status) => status != null && status < 401,
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    return Dio(option)
      ..interceptors.addAll([
        // RequestInterceptor(),
        // LoggingInterceptor(),
      ]);
  }
}
