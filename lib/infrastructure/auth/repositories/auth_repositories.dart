part of 'i_auth_repositories.dart';

class AuthRepositories implements IAuthRepositories {
  AuthRepositories(this._localDatasource, this._remoteDatasource);

  final IAuthLocalDatasource _localDatasource;
  final IAuthRemoteDatasource _remoteDatasource;

  @override
  Future<AuthDataHive?> fetchDataLogin() =>
      Future.value(_localDatasource.authDataHive);

  @override
  Future<Either<ServerFailures, LoginResponse>> postLogin({
    required String email,
    required String password,
    required String uuidDevice,
    required String deviceType,
    required String fcmToken,
  }) async {
    try {
      final response = await _remoteDatasource.postLogin(
        email: email,
        password: password,
        uuidDevice: uuidDevice,
        deviceType: deviceType,
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

  @override
  Future<Either<ServerFailures, GoogleAuthResponse>> postGoogleAuth({
    required String uuidDevice,
    String? fcmToken,
    String? deviceType,
  }) async {
    try {
      // Dapatkan idToken dari Google Sign-In
      final googleUser = await GoogleSignIn.instance.authenticate();
      final idToken = googleUser.authentication.idToken;

      if (idToken == null) {
        return const Left(
          ServerFailures(
            statusCode: -1,
            title: 'Google Sign-In',
            message: 'Gagal mendapatkan token Google. Silakan coba lagi.',
          ),
        );
      }

      final response = await _remoteDatasource.postGoogleAuth(
        idToken: idToken,
        uuidDevice: uuidDevice,
        fcmToken: fcmToken,
        deviceType: deviceType,
      );
      // Jika backend langsung return JWT (tidak perlu complete-profile)
      final token = response.data?.token;
      if (token != null && !(response.data?.needsCompletion ?? false)) {
        await _localDatasource.saveAuth(
          AuthDataHive(
            accessToken: token.accessToken,
            refreshToken: token.refreshToken,
            expiresIn: token.expiresIn,
            tokenType: token.tokenType,
          ),
        );
      }
      return Right(response);
    } on GoogleSignInException catch (e) {
      log(
        '[GoogleSignIn] ERROR — code: ${e.code}, description: ${e.description}',
      );
      return Left(
        ServerFailures(
          statusCode: -1,
          title: 'Google Sign-In',
          message: e.code == GoogleSignInExceptionCode.canceled
              ? 'Login dibatalkan.'
              : 'Login dengan Google gagal. Silakan coba lagi.',
        ),
      );
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

  @override
  Future<Either<ServerFailures, CompleteProfileResponse>> postCompleteProfile({
    required String tempToken,
    required String phone,
    String? name,
  }) async {
    try {
      final response = await _remoteDatasource.postCompleteProfile(
        tempToken: tempToken,
        phone: phone,
        name: name,
      );
      // Simpan JWT final ke Hive
      final token = response.data?.token;
      if (token != null) {
        await _localDatasource.saveAuth(
          AuthDataHive(
            accessToken: token.accessToken,
            refreshToken: token.refreshToken,
            expiresIn: token.expiresIn,
            tokenType: token.tokenType,
          ),
        );
      }
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
}
