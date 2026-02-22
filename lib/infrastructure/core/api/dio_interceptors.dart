import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:happyfinance_mobile/infrastructure/auth/datasources/auth_local_datasource.dart';
import 'package:happyfinance_mobile/injector.dart';

class RequestInterceptor extends Interceptor {
  final IAuthLocalDatasource _authLocalDatasource = sl<IAuthLocalDatasource>();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = _authLocalDatasource.authDataHive?.accessToken;
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }
}

class AuthInterceptor extends Interceptor {
  // Static callback to trigger session expired event
  static void Function()? onSessionExpired;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Check if response is 401 (Unauthorized)
    if (err.response?.statusCode == 401) {
      final responseData = err.response?.data;
      String? message;

      if (responseData is Map<String, dynamic>) {
        message = responseData['message']?.toString();
      }

      final isAuthError =
          err.response?.statusCode == 401 ||
          (err.response?.statusCode == 500 &&
              (err.response?.data?.toString().contains(
                    'Route [login] not defined',
                  ) ??
                  false));

      if (isAuthError) {
        debugPrint('[AUTH-INT] Auth error detected');
        debugPrint('[AUTH-INT] Callback null? ${onSessionExpired == null}');

        // Trigger session expired callback FIRST (so popup can show user info)
        onSessionExpired?.call();
      }

      // Check for Unauthenticated message
      if (message != null &&
          (message.contains('Unauthenticated') ||
              (message.toLowerCase().contains('unauthenticated')) ||
              message.toLowerCase().contains('expired'))) {
        debugPrint('[AUTH] Token expired - session cleared');
      }
    }

    super.onError(err, handler);
  }
}
