part of 'i_auth_remote_datasource.dart';

class AuthRemoteDatasource implements IAuthRemoteDatasource {
  AuthRemoteDatasource(this._dio);
  final Dio _dio;

  @override
  Future<LoginResponse> postLogin({
    required String email,
    required String password,
    required String uuidDevice,
    required String deviceType,
    required String fcmToken,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
          'uuid_device': uuidDevice,
          'fcm_token': fcmToken,
          'device_type': deviceType,
        },
      );
      return LoginResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw ServerException.withError(e);
    }
  }

  // @override
  // Future<RegisterResponse> postRegister({
  //   required String username,
  //   required String email,
  //   required String phone,
  //   required String password,
  //   required String latitude,
  //   required String longitude,
  //   required String uuidDevice,
  //   required String platform,
  //   required String fcmToken,
  //   required String isRule,
  //   required String country,
  // }) async {
  //   try {
  //     final response = await _dio.post<Map<String, dynamic>>(
  //       '/auth/register',
  //       data: {
  //         'username': username,
  //         'email': email,
  //         'phone': phone,
  //         'password': password,
  //         'latitude': latitude,
  //         'longitude': longitude,
  //         'uuid_device': uuidDevice,
  //         'platform': platform,
  //         'fcm_token': fcmToken,
  //         'is_rule': isRule,
  //         'country': country,
  //       },
  //     );
  //     return RegisterResponse.fromJson(response.data!);
  //   } on DioException catch (e) {
  //     throw ServerException.withError(e);
  //   }
  // }

  // @override
  // Future<RegisterResponse> postForgotPassword({required String email}) async {
  //   try {
  //     final response = await _dio.post<Map<String, dynamic>>(
  //       '/auth/forgotpassword',
  //       data: {'email': email},
  //     );
  //     return RegisterResponse.fromJson(response.data!);
  //   } on DioException catch (e) {
  //     throw ServerException.withError(e);
  //   }
  // }
}
