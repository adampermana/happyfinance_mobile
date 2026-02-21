part of 'auth_account_bloc.dart';

@freezed
class AuthAccountEvent with _$AuthAccountEvent {
  const factory AuthAccountEvent.checkAuthStatus() = _CheckAuthStatus;
  // const factory AuthAccountEvent.signedOut() = _SignedOut;
  // const factory AuthAccountEvent.signedOutOffline() = _SignedOutOffline;
  // const factory AuthAccountEvent.logWithGoogle(String code) = _LogWithGoogle;
  // const factory AuthAccountEvent.sessionExpiredAuth() = _SessionExpiredAuth;
}
