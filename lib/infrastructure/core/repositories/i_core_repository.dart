import 'dart:ui';

import 'package:happyfinance_mobile/infrastructure/core/datasources/i_local_datasource.dart';

part 'core_repository.dart';

abstract class ICoreRepository {
  Future<void> saveLocale(Locale locale);
  Future<Locale?> loadLocale();
  Locale? getLocale();
}
