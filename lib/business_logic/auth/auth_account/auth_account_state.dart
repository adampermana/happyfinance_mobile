part of 'auth_account_bloc.dart';

@freezed
abstract class AuthAccountState with _$AuthAccountState {
  factory AuthAccountState.unauthenticated() = Unauthenticated;

  const factory AuthAccountState.authenticated(AuthDataHive auth) =
      Authenticated;

  // const factory AuthAccountState.sessionExpired() = SessionExpired;
}
