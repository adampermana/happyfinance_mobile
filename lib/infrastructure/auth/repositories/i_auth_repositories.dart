import 'package:dartz/dartz.dart';
import 'package:happyfinance_mobile/domains/auth/hive/auth_data_hive.dart';
import 'package:happyfinance_mobile/domains/auth/login/login_response.dart';
import 'package:happyfinance_mobile/infrastructure/auth/datasources/auth_local_datasource.dart';
import 'package:happyfinance_mobile/infrastructure/auth/datasources/i_auth_remote_datasource.dart';
import 'package:happyfinance_mobile/infrastructure/failures/failures.dart';

part 'auth_repositories.dart';

abstract class IAuthRepositories {
  Future<AuthDataHive?> fetchDataLogin();

  Future<Either<ServerFailures, LoginResponse>> postLogin({
    required String email,
    required String password,
    required String uuidDevice,
    required String deviceType,
    required String fcmToken,
  });
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
  // });
}
