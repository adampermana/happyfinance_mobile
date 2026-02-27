import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:happyfinance_mobile/domains/env/env_model.dart';
import 'package:happyfinance_mobile/infrastructure/core/api/dio_interceptors.dart';

class DioApi {
  static Dio init() {
    final option = BaseOptions(
      baseUrl: Env.baseUrl,
      validateStatus: (status) => status != null && status < 401,
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );

    return Dio(option)
      ..interceptors.addAll([
        RequestInterceptor(),
        if (kDebugMode) LoggingInterceptor(),
      ]);
  }
}
