import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:happyfinance_mobile/infrastructure/failures/failures.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
part 'core_local_datasource.dart';

abstract class ICoreLocalDatasource {
  Future<void> saveLocale(Locale locale);
  Locale? get locale;

  Future<void> saveOnBoarding({required bool isBoarding});

  bool fetchOnBoarding();
}
