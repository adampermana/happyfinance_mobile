import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:happyfinance_mobile/domains/env/env_model.dart';
import 'package:happyfinance_mobile/firebase_options.dart';
import 'package:happyfinance_mobile/infrastructure/core/api/happy_http_overrides.dart';
import 'package:happyfinance_mobile/infrastructure/failures/failures.dart';
import 'package:happyfinance_mobile/injector.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';

part 'presentation/widget/custom_flavors_banner.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    if (kDebugMode) {
      log('onChange(${bloc.runtimeType}, $change)');
    }
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    if (kDebugMode) {
      log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    }
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  FutureOr<Widget> Function() builder,
  BuildFlavor flavor,
) async {
  try {
    await HttpOverrides.runWithHttpOverrides(() async {
      // Ensure flutter binding has been initialized
      WidgetsFlutterBinding.ensureInitialized();

      // Initialize environment configuration
      await Env.init(flavor);

      // Setup Firebase Messaging background handler
      // FirebaseMessaging.onBackgroundMessage(
      //   firebaseMessagingBackgroundHandler,
      // );

      // Initialize Firebase
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      // Initialize Google Sign-In (singleton — harus dipanggil tepat sekali)
      // serverClientId: Web Client ID (type 3) dari Firebase Console
      await GoogleSignIn.instance.initialize(
        serverClientId: Env.googleServerClientId,
      );

      // Inject classes & dependencies
      await initApp();

      // Setup BLoC observer for debugging
      if (kDebugMode) Bloc.observer = const AppBlocObserver();

      // ========== NOTIFICATION SERVICES SETUP ==========
      // Initialize Local Notifications Service
      // final localNotificationsService = LocalNotificationsService.instance();
      // await localNotificationsService.init();

      // // Initialize Firebase Messaging Service
      // final firebaseMessagingService = FirebaseMessagingService.instance();
      // await firebaseMessagingService.init(
      //   localNotificationsService: localNotificationsService,
      // );

      debugPrint('Notification services initialized successfully');
      // =================================================

      // Build and run the app
      final app = await builder();
      await SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);
      runApp(app);

      FlutterError.onError = (details) {
        log(details.exceptionAsString(), stackTrace: details.stack);
      };
    }, HappyHttpOvverides());
  } on Failure catch (e, stackTrace) {
    debugPrint('Error during bootstrap: $e, $stackTrace');

    if (kReleaseMode) {
      await FirebaseCrashlytics.instance.recordError(
        e,
        stackTrace,
        fatal: true,
      );
    }
  } finally {
    debugPrint('\x1B[32m');
    debugPrint('┌=======================================');
    debugPrint('|    🎉 WELCOME TO Happy Finance 🎉    ');
    debugPrint('├=======================================');
    debugPrint('├ ✅ Bootstrap completed successfully! ');
    debugPrint('├ ✅ App is running...                 ');
    debugPrint('└=======================================');
    debugPrint('\x1B[0m');
  }
}
