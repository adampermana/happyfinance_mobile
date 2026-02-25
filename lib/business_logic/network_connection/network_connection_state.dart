part of 'network_connection_bloc.dart';

@freezed
abstract class NetworkConnectionState with _$NetworkConnectionState {
  const factory NetworkConnectionState({
    required bool hasInternetConnection,
    required String? message,
  }) = _Initial;

  factory NetworkConnectionState.initial() =>
      const NetworkConnectionState(hasInternetConnection: true, message: null);
}
