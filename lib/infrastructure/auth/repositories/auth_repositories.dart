part of 'i_auth_repositories.dart';

class AuthRepositories implements IAuthRepositories {
  AuthRepositories(this._localDatasource, this._remoteDatasource);

  final IAuthLocalDatasource _localDatasource;
  final IAuthRemoteDatasource _remoteDatasource;

  @override
  Future<Either<ServerFailures, LoginResponse>> postLogin({
    required String usernameOrEmail,
    required String password,
    required String uuidDevice,
    required String latitude,
    required String longitude,
    required String platform,
    required String fcmToken,
  }) async {
    try {
      final response = await _remoteDatasource.postLogin(
        usernameOrEmail: usernameOrEmail,
        password: password,
        uuidDevice: uuidDevice,
        latitude: latitude,
        longitude: longitude,
        platform: platform,
        fcmToken: fcmToken,
      );
      await _localDatasource.saveAuth(
        AuthDataHive(
          accessToken: response.data?.token?.accessToken,
          refreshToken: response.data?.token?.refreshToken,
          expiresIn: response.data?.token?.expiresIn,
          tokenType: response.data?.token?.tokenType,
        ),
      );
      return Right(response);
    } on ServerFailures catch (e) {
      return Left(
        ServerFailures(
          statusCode: e.statusCode,
          title: e.title,
          message: e.message,
          requiresVerification: e.requiresVerification,
          email: e.email,
          phone: e.phone,
        ),
      );
    }
  }

  // @override
  // Future<Either<ServerFailures, RegisterResponse>> postRegister({
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
  //     final response = await _remoteDatasource.postRegister(
  //       username: username,
  //       email: email,
  //       phone: phone,
  //       password: password,
  //       latitude: latitude,
  //       longitude: longitude,
  //       uuidDevice: uuidDevice,
  //       platform: platform,
  //       fcmToken: fcmToken,
  //       isRule: isRule,
  //       country: country,
  //     );
  //     return Right(response);
  //   } on ServerFailures catch (e) {
  //     return Left(
  //       ServerFailures(
  //         statusCode: e.statusCode,
  //         title: e.title,
  //         message: e.message,
  //         requiresVerification: e.requiresVerification,
  //         email: e.email,
  //         phone: e.phone,
  //       ),
  //     );
  //   }
  // }
}
