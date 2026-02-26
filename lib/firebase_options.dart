// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:happyfinance_mobile/domains/env/env_model.dart';

/// [FirebaseOptions] yang dibaca dari env via envied (obfuscated).
/// Menggantikan firebase_options.dart yang di-generate FlutterFire CLI.
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError('Web platform not configured via env.');
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static FirebaseOptions get android => FirebaseOptions(
    apiKey: Env.firebaseAndroidApiKey,
    appId: Env.firebaseAndroidAppId,
    messagingSenderId: Env.firebaseMessagingSenderId,
    projectId: Env.firebaseProjectId,
    storageBucket: Env.firebaseStorageBucket,
  );

  static FirebaseOptions get ios => FirebaseOptions(
    apiKey: Env.firebaseIosApiKey,
    appId: Env.firebaseIosAppId,
    messagingSenderId: Env.firebaseMessagingSenderId,
    projectId: Env.firebaseProjectId,
    storageBucket: Env.firebaseStorageBucket,
    iosBundleId: Env.firebaseIosBundleId,
  );
}
