import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happyfinance_mobile/domains/auth/login/login_response.dart';
import 'package:happyfinance_mobile/infrastructure/auth/repositories/i_auth_repositories.dart';
import 'package:happyfinance_mobile/infrastructure/failures/alert.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepositories) : super(AuthState.initial()) {
    on<_Started>(_onStarted);
    on<_Postlogin>(_onPostlogin);
    on<_PostRegister>(_onPostRegister);
    on<_PostForgotPassword>(_onPostForgotPassword);
  }

  final IAuthRepositories _authRepositories;
  // final DeviceSources _deviceSources;

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

    // Get device information - sangat mudah sekarang!
    // final device = await _deviceSources.deviceInfo();

    final result = await _authRepositories.postLogin(
      usernameOrEmail: event.usernameOrEmail,
      password: event.password,
      uuidDevice: '211212d',
      latitude: event.latitude.toString(),
      longitude: event.longitude.toString(),
      platform: 'android',
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
          // message: r.meta?.message,
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

    // Get device information - sangat mudah sekarang!
    // final device = await _deviceSources.deviceInfo();

    // final result = await _authRepositories.postRegister(
    //   username: event.username,
    //   email: event.email,
    //   phone: event.phone,
    //   password: event.password,
    //   latitude: event.latitude,
    //   longitude: event.longitude,
    //   uuidDevice: '211212d',
    //   platform: 'android',
    //   fcmToken: event.fcmToken,
    //   isRule: event.isRule,
    //   country: event.country,
    // );

    // result.fold(
    //   (f) => emit(
    //     state.copyWith(
    //       successRegister: false,
    //       loading: false,
    //       message: f.message,
    //       alert: Alert.fromFailures(f),
    //     ),
    //   ),
    //   (r) => emit(
    //     state.copyWith(
    //       loading: false,
    //       successRegister: true,
    //       registerResponse: r,
    //       alert: null,
    //       message: r.meta?.message,
    //     ),
    //   ),
    // );
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

    // final result = await _authRepositories.postForgotPassword(event.email);

    // result.fold(
    //   (f) => emit(
    //     state.copyWith(
    //       success: false,
    //       loading: false,
    //       message: f.message,
    //       alert: Alert.fromFailures(f),
    //     ),
    //   ),
    //   (r) => emit(
    //     state.copyWith(
    //       loading: false,
    //       success: true,
    //       alert: null,
    //       message: r.meta?.message,
    //     ),
    //   ),
    // );
  }
}
