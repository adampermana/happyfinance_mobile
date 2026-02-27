import 'package:get_it/get_it.dart';
import 'package:happyfinance_mobile/business_logic/auth/auth_account/auth_account_bloc.dart';
import 'package:happyfinance_mobile/business_logic/auth/auth_bloc.dart';
import 'package:happyfinance_mobile/business_logic/core/core_cubit.dart';
import 'package:happyfinance_mobile/business_logic/locale/locale_bloc.dart';
import 'package:happyfinance_mobile/business_logic/network_connection/network_connection_bloc.dart';
import 'package:happyfinance_mobile/infrastructure/auth/datasources/auth_local_datasource.dart';
import 'package:happyfinance_mobile/infrastructure/auth/datasources/i_auth_remote_datasource.dart';
import 'package:happyfinance_mobile/infrastructure/auth/repositories/i_auth_repositories.dart';
import 'package:happyfinance_mobile/infrastructure/core/api/dio_api.dart';
import 'package:happyfinance_mobile/infrastructure/core/datasources/i_core_local_datasource.dart';
import 'package:happyfinance_mobile/infrastructure/core/repositories/i_core_repository.dart';
import 'package:happyfinance_mobile/infrastructure/services/device_info_service.dart';
import 'package:happyfinance_mobile/local_data_storage.dart';

final GetIt sl = GetIt.instance;
Future<void> initApp() async {
  await initHiveStorage();
  await _initCoreFeature();
  await _initL10nFeature();
  await _initAuthFeature();
}

Future<void> _initCoreFeature() async {
  sl
    ..registerFactory(NetworkConnectionBloc.new)
    ..registerLazySingleton(DioApi.init)
    ..registerFactory<DeviceInfoService>(DeviceInfoService.new);
}

Future<void> _initL10nFeature() async {
  sl
    ..registerLazySingleton<ICoreLocalDatasource>(HiveCoreLocalDatasource.new)
    ..registerLazySingleton<ICoreRepository>(() => CoreRepositories(sl()))
    ..registerLazySingleton(() => CoreCubit(sl()))
    ..registerFactory(() => LocaleBloc(sl()));
}

Future<void> _initAuthFeature() async {
  sl
    ..registerLazySingleton<IAuthLocalDatasource>(HiveAuthLocalDatasource.new)
    ..registerLazySingleton<IAuthRemoteDatasource>(
      () => AuthRemoteDatasource(sl()),
    )
    ..registerLazySingleton<IAuthRepositories>(
      () => AuthRepositories(sl(), sl()),
    )
    ..registerLazySingleton(() => AuthAccountBloc(sl()))
    ..registerFactory(() => AuthBloc(sl(), sl()));
  // ..registerFactory(() => LocationBloc(sl()));
}
