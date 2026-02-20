import 'package:flutter/material.dart';
import 'package:happyfinance_mobile/l10n/l10n.dart';
import 'package:happyfinance_mobile/presentation/app/resources/app_theme.dart';
import 'package:happyfinance_mobile/presentation/routers/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: AppTheme.lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
