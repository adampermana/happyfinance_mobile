part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.postlogin({
    required String usernameOrEmail,
    required String password,
    required double latitude,
    required double longitude,
    required String fcmToken,
  }) = _Postlogin;

  const factory AuthEvent.postRegister({
    required String username,
    required String email,
    required String phone,
    required String password,
    required String latitude,
    required String longitude,
    required String fcmToken,
    required String isRule,
    required String country,
  }) = _PostRegister;

  const factory AuthEvent.postForgotPassword({required String email}) =
      _PostForgotPassword;
}
