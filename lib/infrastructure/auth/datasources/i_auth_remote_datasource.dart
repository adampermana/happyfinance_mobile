import 'package:dio/dio.dart';
import 'package:happyfinance_mobile/domains/auth/login/login_response.dart';
import 'package:happyfinance_mobile/infrastructure/failures/exceptions.dart';

part 'auth_remote_datasource.dart';

abstract class IAuthRemoteDatasource {
  Future<LoginResponse> postLogin({
    required String email,
    required String password,
    required String uuidDevice,
    required String deviceType,
    required String fcmToken,
  });
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
  // });

  // Future<RegisterResponse> postForgotPassword({required String email});

  // Future<LogoutResponse> postLogOut();

  // Future<PostEmailResponse> postEmailRequest({required String email});
  // Future<LogoutResponse> postVerification({
  //   required String email,
  //   required String otp,
  // });
  // Future<LogoutResponse> pos tResetPassword({
  //   required String email,
  //   required String otp,
  //   required String newPassword,
  //   required String confirmPassword,
  // });

  // Future<LogoutResponse> postProfilePicture({
  //   required String filePath,
  //   required String userId,
  // });

  // Future<UpdateProfileResponse> putUpdateProfile({
  //   required String userId,
  //   String? name,
  //   String? email,
  //   String? phone,
  //   String? avatarPath,
  // });

  // Future<ChangePasswordResponse> putChangePassword({
  //   required String oldPassword,
  //   required String newPassword,
  //   required String confirmPassword,
  // });

  // // Future<FcmResponse> putFcmToken({
  // //   required String fcmToken,
  // // });

  // Future<FetchCurrentUsers> fetchDataUser();

  // Future<FetchProfileTaskResponse> fetchFrtProfile();
}
