import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happyfinance_mobile/domains/auth/hive/auth_data_hive.dart';
import 'package:happyfinance_mobile/infrastructure/auth/repositories/i_auth_repositories.dart';

part 'auth_account_bloc.freezed.dart';
part 'auth_account_event.dart';
part 'auth_account_state.dart';

class AuthAccountBloc extends Bloc<AuthAccountEvent, AuthAccountState> {
  AuthAccountBloc(this._authRepository)
    : super(AuthAccountState.unauthenticated()) {
    on<_CheckAuthStatus>(_onCheckAuthStatus);
    // on<_SignedOut>(_onSignedOut);
    // on<_SignedOutOffline>(_onSignedOutOffline);
    // on<_SessionExpiredAuth>(_onSessionExpiredAuth);
  }

  final IAuthRepositories _authRepository;

  Future<void> _onCheckAuthStatus(
    _CheckAuthStatus event,
    Emitter<AuthAccountState> emit,
  ) async {
    final isAuth = await _authRepository.fetchDataLogin();

    emit(
      isAuth != null
          ? AuthAccountState.authenticated(isAuth)
          : AuthAccountState.unauthenticated(),
    );
  }

  // Future<void> _onSignedOut(_SignedOut event, Emitter<AuthAccountState> emit) async {
  //   await _authRepository.postLogout();
  //   emit(AuthAccountState.unauthenticated());
  // }

  // Future<void> _onSignedOutOffline(
  //   _SignedOutOffline event,
  //   Emitter<AuthAccountState> emit,
  // ) async {
  //   await _authRepository.clearLocalAuth();
  //   emit(AuthAccountState.unauthenticated());
  // }

  // Future<void> _onSessionExpiredAuth(
  //   _SessionExpiredAuth event,
  //   Emitter<AuthAccountState> emit,
  // ) async {
  //   emit(const AuthAccountState.sessionExpired());
  // }
}
