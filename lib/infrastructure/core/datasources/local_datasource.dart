part of 'i_local_datasource.dart';

class HiveCoreLocalDatasource implements ILocalDatasource {
  static const String l10nBox = 'l10n-box';
  static const String _l10nKey = 'l10n_key';

  @override
  Future<void> saveLocale(Locale locale) {
    final languageCode = locale.languageCode;
    final countryCode = locale.countryCode != null
        ? '_${locale.countryCode}'
        : '';

    return Hive.box<String>(l10nBox).put(_l10nKey, languageCode + countryCode);
  }

  @override
  Locale? get locale {
    final localeName = Hive.box<String>(l10nBox).get(_l10nKey).toString();
    if (localeName.length > 5 || localeName.length < 2) {
      return null;
    }

    final separatorIndex = localeName.indexOf('-');
    final languageCode = localeName.substring(
      0,
      separatorIndex.isNegative ? null : separatorIndex,
    );
    final countryCode = separatorIndex.isNegative
        ? null
        : localeName.substring(separatorIndex + 1);

    return Locale(languageCode, countryCode);
  }
}
