part of 'network_connection_bloc.dart';

@freezed
abstract class NetworkConnectionEvent with _$NetworkConnectionEvent {
  const factory NetworkConnectionEvent.checkConnection() = _CheckConnection;
  const factory NetworkConnectionEvent.connectionChanged({
    required bool hasInternetConnection,
    String? message,
  }) = _ConnectionChanged;
}
