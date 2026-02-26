import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:happyfinance_mobile/business_logic/auth/auth_account/auth_account_bloc.dart';
import 'package:happyfinance_mobile/business_logic/core/core_cubit.dart';
import 'package:happyfinance_mobile/business_logic/locale/locale_bloc.dart';
import 'package:happyfinance_mobile/business_logic/network_connection/network_connection_bloc.dart';
import 'package:happyfinance_mobile/injector.dart';
import 'package:happyfinance_mobile/l10n/l10n.dart';
import 'package:happyfinance_mobile/presentation/app/resources/app_theme.dart';
import 'package:happyfinance_mobile/presentation/routers/router.dart';
import 'package:happyfinance_mobile/presentation/widget/custom_snackbars.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocaleBloc>(
          create: (context) => sl()..add(const LocaleEvent.loadCurrentLocale()),
        ),
        BlocProvider<CoreCubit>(
          lazy: false,
          create: (context) => sl<CoreCubit>()..fetchOnBoarding(),
        ),
        BlocProvider<AuthAccountBloc>(
          lazy: false,
          create: (context) =>
              sl()..add(const AuthAccountEvent.checkAuthStatus()),
        ),
        BlocProvider<NetworkConnectionBloc>(
          create: (context) => sl<NetworkConnectionBloc>(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
        theme: AppTheme.lightTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) => child!,
      ),
    );
  }
}
