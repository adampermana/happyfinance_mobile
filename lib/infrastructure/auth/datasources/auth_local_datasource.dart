import 'package:flutter/foundation.dart';
import 'package:happyfinance_mobile/domains/auth/hive/auth_data_hive.dart';
import 'package:happyfinance_mobile/infrastructure/failures/failures.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';

abstract class IAuthLocalDatasource {
  Future<void> saveAuth(AuthDataHive authDataHive);

  AuthDataHive? get authDataHive;

  Future<void> clearLogin();
}

class HiveAuthLocalDatasource implements IAuthLocalDatasource {
  static const String authBox = 'auth-box';

  // key
  static const String _autBoxKey = 'auth_key';

  @override
  Future<void> saveAuth(AuthDataHive authDataHive) async {
    try {
      final result = await Hive.box<AuthDataHive>(
        authBox,
      ).put(_autBoxKey, authDataHive);
      return result;
    } on CacheFailure catch (e) {
      CacheFailure(message: e.message);
    }
  }

  @override
  AuthDataHive? get authDataHive {
    final result = Hive.box<AuthDataHive>(authBox).get(_autBoxKey);
    debugPrint('=== Get Data user from local: $result');
    return result;
  }

  @override
  Future<void> clearLogin() async {
    try {
      if (await Hive.boxExists(authBox)) {
        debugPrint('==== Deleting Data user box from disk: $authBox');
        await Hive.deleteBoxFromDisk(authBox);
        // await Hive.box<String>(authBox).delete(_autBoxKey);
      }
      await Hive.openBox<AuthDataHive>(authBox);
    } on CacheFailure catch (e) {
      CacheFailure(message: e.message);
    }
  }
}
