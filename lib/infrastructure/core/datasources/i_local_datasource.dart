import 'dart:ui';

import 'package:hive_ce_flutter/hive_ce_flutter.dart';
part 'local_datasource.dart';

abstract class ILocalDatasource {
  Future<void> saveLocale(Locale locale);
  Locale? get locale;
}
