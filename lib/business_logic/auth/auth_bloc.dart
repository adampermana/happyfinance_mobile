import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happyfinance_mobile/domains/auth/login/login_response.dart';
import 'package:happyfinance_mobile/infrastructure/auth/repositories/i_auth_repositories.dart';
import 'package:happyfinance_mobile/infrastructure/failures/alert.dart';
import 'package:happyfinance_mobile/infrastructure/services/device_info_service.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepositories, this._deviceInfoService)
    : super(AuthState.initial()) {
    on<_Started>(_onStarted);
    on<_Postlogin>(_onPostlogin);
    on<_PostRegister>(_onPostRegister);
    on<_PostForgotPassword>(_onPostForgotPassword);
    on<_PostGoogleAuth>(_onPostGoogleAuth);
    on<_PostCompleteProfile>(_onPostCompleteProfile);
  }

  final IAuthRepositories _authRepositories;
  final DeviceInfoService _deviceInfoService;

  Future<void> _onStarted(_Started event, Emitter<AuthState> emit) async {}

  Future<void> _onPostlogin(_Postlogin event, Emitter<AuthState> emit) async {
    emit(
      state.copyWith(
        loading: true,
        successLogin: false,
        alert: null,
        message: null,
      ),
    );
    // Device info
    final device = await _deviceInfoService.deviceInfo();

    final result = await _authRepositories.postLogin(
      email: event.email,
      password: event.password,
      uuidDevice: device.deviceId,
      deviceType: device.platform,
      fcmToken: event.fcmToken,
    );

    result.fold(
      (f) => emit(
        state.copyWith(
          successLogin: false,
          loading: false,
          message: f.message,
          alert: Alert.fromFailures(f),
        ),
      ),
      (r) => emit(
        state.copyWith(
          loading: false,
          successLogin: true,
          loginResponse: r,
          alert: null,
        ),
      ),
    );
  }

  Future<void> _onPostRegister(
    _PostRegister event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        loading: true,
        successRegister: false,
        alert: null,
        message: null,
      ),
    );
    // TODO: implement postRegister when backend is ready
  }

  Future<void> _onPostForgotPassword(
    _PostForgotPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        loading: true,
        successLogin: false,
        alert: null,
        message: null,
      ),
    );
    // TODO: implement postForgotPassword when backend is ready
  }

  Future<void> _onPostGoogleAuth(
    _PostGoogleAuth event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        loading: true,
        successGoogleAuth: false,
        needsCompletion: false,
        tempToken: null,
        googleName: null,
        googleEmail: null,
        alert: null,
        message: null,
      ),
    );

    // Device info
    final device = await _deviceInfoService.deviceInfo();

    final result = await _authRepositories.postGoogleAuth(
      uuidDevice: device.deviceId,
      fcmToken: '3232fff',
      deviceType: device.platform,
    );

    result.fold(
      (f) => emit(
        state.copyWith(
          successGoogleAuth: false,
          loading: false,
          // Kalau user cancel, jangan tampilkan error message
          message: f.statusCode == -1 && f.message == 'Login dibatalkan.'
              ? null
              : f.message,
          alert: f.statusCode == -1 && f.message == 'Login dibatalkan.'
              ? null
              : Alert.fromFailures(f),
        ),
      ),
      (r) {
        final needsCompletion = r.data?.needsCompletion ?? false;
        emit(
          state.copyWith(
            loading: false,
            successGoogleAuth: true,
            needsCompletion: needsCompletion,
            tempToken: needsCompletion ? r.data?.tempToken : null,
            googleName: needsCompletion ? r.data?.name : null,
            googleEmail: needsCompletion ? r.data?.email : null,
            alert: null,
          ),
        );
      },
    );
  }

  Future<void> _onPostCompleteProfile(
    _PostCompleteProfile event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        loading: true,
        successGoogleAuth: false,
        needsCompletion: false,
        alert: null,
        message: null,
      ),
    );

    final result = await _authRepositories.postCompleteProfile(
      tempToken: event.tempToken,
      phone: event.phone,
      name: event.name,
    );

    result.fold(
      (f) => emit(
        state.copyWith(
          loading: false,
          message: f.message,
          alert: Alert.fromFailures(f),
        ),
      ),
      (r) => emit(
        state.copyWith(
          loading: false,
          successGoogleAuth: true,
          needsCompletion: false,
          alert: null,
        ),
      ),
    );
  }
}
