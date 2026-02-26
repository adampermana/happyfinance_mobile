import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:happyfinance_mobile/domains/auth/google/complete_profile_response.dart';
import 'package:happyfinance_mobile/domains/auth/google/google_auth_response.dart';
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

  Future<Either<ServerFailures, GoogleAuthResponse>> postGoogleAuth({
    required String uuidDevice,
    String? fcmToken,
    String? deviceType,
  });

  Future<Either<ServerFailures, CompleteProfileResponse>> postCompleteProfile({
    required String tempToken,
    required String phone,
    String? name,
  });
}
