part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    required String email,
    required String password,
    required String? message,
    required String? messageTitle,
    required int? statusCode,
    required bool loading,
    required bool successLogin,
    required bool successRegister,
    required bool successGoogleAuth,
    required bool needsCompletion,
    required String? tempToken,
    required String? googleName,
    required String? googleEmail,
    required bool isValid,
    required LoginResponse? loginResponse,
    required Alert? alert,
  }) = _Initial;

  factory AuthState.initial() => const AuthState(
    email: '',
    password: '',
    message: null,
    messageTitle: null,
    statusCode: null,
    loading: false,
    isValid: false,
    successLogin: false,
    successRegister: false,
    successGoogleAuth: false,
    needsCompletion: false,
    tempToken: null,
    googleName: null,
    googleEmail: null,
    loginResponse: null,
    alert: null,
  );
}
