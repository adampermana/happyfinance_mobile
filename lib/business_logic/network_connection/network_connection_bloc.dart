import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:happyfinance_mobile/infrastructure/failures/failures.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

part 'network_connection_event.dart';
part 'network_connection_state.dart';
part 'network_connection_bloc.freezed.dart';

class NetworkConnectionBloc
    extends Bloc<NetworkConnectionEvent, NetworkConnectionState> {
  NetworkConnectionBloc() : super(NetworkConnectionState.initial()) {
    on<_CheckConnection>(_onCheckConnection);
    on<_ConnectionChanged>(_onConnectionChanged);

    _startMonitoring();
  }

  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;
  StreamSubscription<InternetStatus>? _internetSubscription;

  void _startMonitoring() {
    // Monitor perubahan status koneksi (wifi, mobile data, dll)
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((
      results,
    ) {
      // Ketika ada perubahan connectivity, cek internet sebenarnya
      add(const NetworkConnectionEvent.checkConnection());
    });

    // Monitor status internet sebenarnya
    _internetSubscription = InternetConnection().onStatusChange.listen((
      status,
    ) {
      final hasInternet = status == InternetStatus.connected;
      add(
        NetworkConnectionEvent.connectionChanged(
          hasInternetConnection: hasInternet,
          message: hasInternet ? null : 'Tidak ada koneksi internet',
        ),
      );
    });

    // Lakukan pengecekan awal
    add(const NetworkConnectionEvent.checkConnection());
  }

  Future<void> _onCheckConnection(
    _CheckConnection event,
    Emitter<NetworkConnectionState> emit,
  ) async {
    try {
      // Cek apakah ada koneksi internet sebenarnya
      final hasInternet = await InternetConnection().hasInternetAccess;

      emit(
        state.copyWith(
          hasInternetConnection: hasInternet,
          message: hasInternet ? null : 'Tidak ada koneksi internet',
        ),
      );
    } on Failure catch (e) {
      emit(
        state.copyWith(
          hasInternetConnection: false,
          message: 'Gagal memeriksa koneksi: $e',
        ),
      );
    }
  }

  Future<void> _onConnectionChanged(
    _ConnectionChanged event,
    Emitter<NetworkConnectionState> emit,
  ) async {
    emit(
      state.copyWith(
        hasInternetConnection: event.hasInternetConnection,
        message: event.message,
      ),
    );
  }

  @override
  Future<void> close() async {
    await _connectivitySubscription?.cancel();
    await _internetSubscription?.cancel();
    return super.close();
  }
}
