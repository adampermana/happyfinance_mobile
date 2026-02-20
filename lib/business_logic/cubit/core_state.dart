part of 'core_cubit.dart';

@freezed
abstract class CoreState with _$CoreState {
  const factory CoreState({
    required bool isSubmmitBoard,
    required bool isBoarding,
  }) = _CoreState;

  factory CoreState.initial() => const CoreState(
    isSubmmitBoard: false,
    isBoarding: false,
  );
}
