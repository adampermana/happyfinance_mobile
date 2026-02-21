import 'dart:io';

import 'package:happyfinance_mobile/domains/auth/hive/auth_data_hive.dart';
import 'package:happyfinance_mobile/hive_registrar.g.dart';
import 'package:happyfinance_mobile/infrastructure/auth/datasources/auth_local_datasource.dart';
import 'package:happyfinance_mobile/infrastructure/core/datasources/i_core_local_datasource.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

late Directory appCacheDir;

Future<void> initHiveStorage() async {
  appCacheDir = await getApplicationCacheDirectory();
  await Hive.initFlutter(appCacheDir.absolute.path);
  await _registerAdapterHive();
  await initHiveBox();
}

Future<void> _registerAdapterHive() async {
  Hive.registerAdapters();
}

Future<void> initHiveBox() async {
  // final encryptionKey = Hive.generateSecureKey();
  await Hive.openBox<String>(HiveCoreLocalDatasource.l10nBox);
  await Hive.openBox<AuthDataHive>(
    HiveAuthLocalDatasource.authBox,
    // encryptionCipher: HiveAesCipher(encryptionKey),
  );
  await Hive.openBox<bool>(HiveCoreLocalDatasource.onBoardingBox);
}
