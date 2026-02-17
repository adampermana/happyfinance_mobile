import 'dart:io';

import 'package:dio/dio.dart';
import 'package:happyfinance_mobile/infrastructure/failures/failures.dart';

const int defaultErrorCode = -1;
const int socketErrorCode = -4;

class ServerException extends ServerFailures implements Exception {
  factory ServerException.withMessage({
    required String title,
    required String message,
    int statusCode = defaultErrorCode,
    String email = '',
  }) {
    return ServerException._(
      statusCode: statusCode,
      title: title,
      message: message,
      email: email,
    );
  }

  factory ServerException.withError(DioException error) {
    var code = defaultErrorCode;
    var title = '';
    var message = '';
    var email = '';

    switch (error.type) {
      case DioExceptionType.cancel:
        title = 'Oh no...';
        message = 'Request was cancelled';

      case DioExceptionType.connectionTimeout:
        title = 'Connection timeout...';
        message = 'Please check your internet connection and try again.';

      case DioExceptionType.receiveTimeout:
        title = 'Oh no...';
        message = 'Receive timeout in connection';

      case DioExceptionType.sendTimeout:
        title = 'Oh no...';
        message = 'Receive timeout in send request';

      case DioExceptionType.badCertificate:
        title = 'This connection is not safe';
        message = 'Please ensure that you are going to correct site';

      case DioExceptionType.connectionError:
        title = 'Connection error...';
        message = 'Please check your internet connection and try again.';

      case DioExceptionType.unknown:
        final ex = error.error;
        // SocketException → treat sebagai no-connection
        if (ex is SocketException) {
          code = socketErrorCode;
          title = 'No connection found';
          message = 'Please check your internet connection and try again.';
          break;
        }
        title = 'Oh no...';
        message = 'Internal Server Error';

      case DioExceptionType.badResponse:
        code = error.response?.statusCode ?? defaultErrorCode;

        final raw = error.response?.data;
        Map<String, dynamic>? responseData;

        if (raw is Map) {
          responseData = Map<String, dynamic>.from(raw);
        }

        if (responseData == null) {
          title = 'Oh no...';
          message = 'Something went wrong. We are working on it.';
          break;
        }

        // Parse meta object
        final meta = responseData['meta'];
        String? metaMessage;
        int? metaCode;

        if (meta is Map<String, dynamic>) {
          metaMessage = _asString(meta['message']);
          metaCode = meta['code'] as int?;
        }

        // Parse data object
        final data = responseData['data'];
        var requiresVerification = false;
        var dataEmail = '';
        var dataPhone = '';

        if (data is Map<String, dynamic>) {
          requiresVerification = data['requiresVerification'] as bool? ?? false;
          dataEmail = _asString(data['email']) ?? '';
          dataPhone = _asString(data['phone']) ?? '';
        }

        // Use meta.code if available, otherwise use response status code
        code = metaCode ?? code;
        message = metaMessage ?? 'Something went wrong.';

        // Handle specific status codes
        if (code == 401) {
          title = 'Sesi Berakhir';
          message =
              metaMessage ?? 'Sesi Anda telah berakhir. Silakan login kembali.';
          email = dataEmail;
        } else if (code == 403) {
          // Account needs verification
          title = 'Verifikasi Diperlukan';
          message = metaMessage ?? 'Silakan verifikasi akun Anda.';
          email = dataEmail;
        } else if (code == 500) {
          title = 'Server Error';
          message = metaMessage ?? 'Internal Server Error';
          email = dataEmail;
        } else {
          title = 'Error';
          message =
              metaMessage ?? 'Something went wrong. We are working on it.';
          email = dataEmail;
        }

        // Return with all parsed data
        return ServerException._(
          statusCode: code,
          title: title,
          message: message,
          email: email,
          phone: dataPhone,
          requiresVerification: requiresVerification,
        );
    }

    // Fallback terakhir: beberapa lib mengisi error.error sebagai Map
    if (message.isEmpty) {
      final e = error.error;
      if (e is Map) {
        final mm = _asString(e['message']);
        if (mm != null && mm.isNotEmpty) {
          message = mm;
          if (title.isEmpty) title = 'Something went wrong';
        }
      }
    }

    if (title.isEmpty) title = 'Oh no...';
    if (message.isEmpty) message = 'Unexpected error.';

    return ServerException._(
      statusCode: code,
      title: title,
      message: message,
      email: email,
    );
  }
  const ServerException._({
    required super.statusCode,
    required super.title,
    required super.message,
    super.requiresVerification,
    super.email,
    super.phone,
  });

  static String? _asString(dynamic v) => v is String ? v : v?.toString();
}
