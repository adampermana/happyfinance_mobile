import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:happyfinance_mobile/infrastructure/core/api/dio_interceptors.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioApi {
  static Dio init() {
    final option = BaseOptions(
      baseUrl: 'http://192.168.8.105:3000',
      validateStatus: (status) => status != null && status < 401,
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    return Dio(option)
      ..interceptors.addAll([
        RequestInterceptor(),
        if (kDebugMode)
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            // responseBody: true,
            // responseHeader: false,
            // error: true,
            // compact: true,
          ),
      ]);
  }
}
