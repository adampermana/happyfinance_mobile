part of 'i_core_repository.dart';

class CoreRepositories implements ICoreRepository {
  const CoreRepositories(this._localDatasource);
  final ILocalDatasource _localDatasource;

  @override
  Future<void> saveLocale(Locale locale) => _localDatasource.saveLocale(locale);

  @override
  Future<Locale?> loadLocale() => Future.value(_localDatasource.locale);

  @override
  Locale? getLocale() => _localDatasource.locale;
}
