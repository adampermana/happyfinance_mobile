// lib/domains/auth/env/env_model.dart
import 'package:envied/envied.dart';

part 'env_model.g.dart';

enum BuildFlavor { development, staging, production }

/// Development
@Envied(name: 'EnvDev', path: '.env.development', obfuscate: true)
abstract class EnvDev {
  @EnviedField(varName: 'SERVER_BASE_URL')
  static final String baseUrl = _EnvDev.baseUrl;

  @EnviedField(varName: 'GOOGLE_SERVER_CLIENT_ID')
  static final String googleServerClientId = _EnvDev.googleServerClientId;

  // Firebase shared
  @EnviedField(varName: 'FIREBASE_MESSAGING_SENDER_ID')
  static final String firebaseMessagingSenderId =
      _EnvDev.firebaseMessagingSenderId;

  @EnviedField(varName: 'FIREBASE_PROJECT_ID')
  static final String firebaseProjectId = _EnvDev.firebaseProjectId;

  @EnviedField(varName: 'FIREBASE_STORAGE_BUCKET')
  static final String firebaseStorageBucket = _EnvDev.firebaseStorageBucket;

  @EnviedField(varName: 'FIREBASE_AUTH_DOMAIN')
  static final String firebaseAuthDomain = _EnvDev.firebaseAuthDomain;

  // Firebase Android
  @EnviedField(varName: 'FIREBASE_ANDROID_API_KEY')
  static final String firebaseAndroidApiKey = _EnvDev.firebaseAndroidApiKey;

  @EnviedField(varName: 'FIREBASE_ANDROID_APP_ID')
  static final String firebaseAndroidAppId = _EnvDev.firebaseAndroidAppId;

  // Firebase iOS
  @EnviedField(varName: 'FIREBASE_IOS_API_KEY')
  static final String firebaseIosApiKey = _EnvDev.firebaseIosApiKey;

  @EnviedField(varName: 'FIREBASE_IOS_APP_ID')
  static final String firebaseIosAppId = _EnvDev.firebaseIosAppId;

  @EnviedField(varName: 'FIREBASE_IOS_BUNDLE_ID')
  static final String firebaseIosBundleId = _EnvDev.firebaseIosBundleId;

  // Firebase macOS
  @EnviedField(varName: 'FIREBASE_MACOS_APP_ID')
  static final String firebaseMacosAppId = _EnvDev.firebaseMacosAppId;

  @EnviedField(varName: 'FIREBASE_MACOS_BUNDLE_ID')
  static final String firebaseMacosBundleId = _EnvDev.firebaseMacosBundleId;

  // Firebase Web
  @EnviedField(varName: 'FIREBASE_WEB_API_KEY')
  static final String firebaseWebApiKey = _EnvDev.firebaseWebApiKey;

  @EnviedField(varName: 'FIREBASE_WEB_APP_ID')
  static final String firebaseWebAppId = _EnvDev.firebaseWebAppId;

  @EnviedField(varName: 'FIREBASE_WEB_MEASUREMENT_ID')
  static final String firebaseWebMeasurementId =
      _EnvDev.firebaseWebMeasurementId;

  // Firebase Windows
  @EnviedField(varName: 'FIREBASE_WINDOWS_APP_ID')
  static final String firebaseWindowsAppId = _EnvDev.firebaseWindowsAppId;

  @EnviedField(varName: 'FIREBASE_WINDOWS_MEASUREMENT_ID')
  static final String firebaseWindowsMeasurementId =
      _EnvDev.firebaseWindowsMeasurementId;

  // Maps
  @EnviedField(varName: 'KEY_MAPS')
  static final String keyMaps = _EnvDev.keyMaps;
}

/// Staging
@Envied(name: 'EnvStg', path: '.env.staging', obfuscate: true)
abstract class EnvStg {
  @EnviedField(varName: 'SERVER_BASE_URL')
  static final String baseUrl = _EnvStg.baseUrl;

  @EnviedField(varName: 'GOOGLE_SERVER_CLIENT_ID')
  static final String googleServerClientId = _EnvStg.googleServerClientId;

  // Firebase shared
  @EnviedField(varName: 'FIREBASE_MESSAGING_SENDER_ID')
  static final String firebaseMessagingSenderId =
      _EnvStg.firebaseMessagingSenderId;

  @EnviedField(varName: 'FIREBASE_PROJECT_ID')
  static final String firebaseProjectId = _EnvStg.firebaseProjectId;

  @EnviedField(varName: 'FIREBASE_STORAGE_BUCKET')
  static final String firebaseStorageBucket = _EnvStg.firebaseStorageBucket;

  @EnviedField(varName: 'FIREBASE_AUTH_DOMAIN')
  static final String firebaseAuthDomain = _EnvStg.firebaseAuthDomain;

  // Firebase Android
  @EnviedField(varName: 'FIREBASE_ANDROID_API_KEY')
  static final String firebaseAndroidApiKey = _EnvStg.firebaseAndroidApiKey;

  @EnviedField(varName: 'FIREBASE_ANDROID_APP_ID')
  static final String firebaseAndroidAppId = _EnvStg.firebaseAndroidAppId;

  // Firebase iOS
  @EnviedField(varName: 'FIREBASE_IOS_API_KEY')
  static final String firebaseIosApiKey = _EnvStg.firebaseIosApiKey;

  @EnviedField(varName: 'FIREBASE_IOS_APP_ID')
  static final String firebaseIosAppId = _EnvStg.firebaseIosAppId;

  @EnviedField(varName: 'FIREBASE_IOS_BUNDLE_ID')
  static final String firebaseIosBundleId = _EnvStg.firebaseIosBundleId;

  // Firebase macOS
  @EnviedField(varName: 'FIREBASE_MACOS_APP_ID')
  static final String firebaseMacosAppId = _EnvStg.firebaseMacosAppId;

  @EnviedField(varName: 'FIREBASE_MACOS_BUNDLE_ID')
  static final String firebaseMacosBundleId = _EnvStg.firebaseMacosBundleId;

  // Firebase Web
  @EnviedField(varName: 'FIREBASE_WEB_API_KEY')
  static final String firebaseWebApiKey = _EnvStg.firebaseWebApiKey;

  @EnviedField(varName: 'FIREBASE_WEB_APP_ID')
  static final String firebaseWebAppId = _EnvStg.firebaseWebAppId;

  @EnviedField(varName: 'FIREBASE_WEB_MEASUREMENT_ID')
  static final String firebaseWebMeasurementId =
      _EnvStg.firebaseWebMeasurementId;

  // Firebase Windows
  @EnviedField(varName: 'FIREBASE_WINDOWS_APP_ID')
  static final String firebaseWindowsAppId = _EnvStg.firebaseWindowsAppId;

  @EnviedField(varName: 'FIREBASE_WINDOWS_MEASUREMENT_ID')
  static final String firebaseWindowsMeasurementId =
      _EnvStg.firebaseWindowsMeasurementId;

  // Maps
  @EnviedField(varName: 'KEY_MAPS')
  static final String keyMaps = _EnvStg.keyMaps;
}

/// Production
@Envied(name: 'EnvProd', path: '.env.production', obfuscate: true)
abstract class EnvProd {
  @EnviedField(varName: 'SERVER_BASE_URL')
  static final String baseUrl = _EnvProd.baseUrl;

  @EnviedField(varName: 'GOOGLE_SERVER_CLIENT_ID')
  static final String googleServerClientId = _EnvProd.googleServerClientId;

  // Firebase shared
  @EnviedField(varName: 'FIREBASE_MESSAGING_SENDER_ID')
  static final String firebaseMessagingSenderId =
      _EnvProd.firebaseMessagingSenderId;

  @EnviedField(varName: 'FIREBASE_PROJECT_ID')
  static final String firebaseProjectId = _EnvProd.firebaseProjectId;

  @EnviedField(varName: 'FIREBASE_STORAGE_BUCKET')
  static final String firebaseStorageBucket = _EnvProd.firebaseStorageBucket;

  @EnviedField(varName: 'FIREBASE_AUTH_DOMAIN')
  static final String firebaseAuthDomain = _EnvProd.firebaseAuthDomain;

  // Firebase Android
  @EnviedField(varName: 'FIREBASE_ANDROID_API_KEY')
  static final String firebaseAndroidApiKey = _EnvProd.firebaseAndroidApiKey;

  @EnviedField(varName: 'FIREBASE_ANDROID_APP_ID')
  static final String firebaseAndroidAppId = _EnvProd.firebaseAndroidAppId;

  // Firebase iOS
  @EnviedField(varName: 'FIREBASE_IOS_API_KEY')
  static final String firebaseIosApiKey = _EnvProd.firebaseIosApiKey;

  @EnviedField(varName: 'FIREBASE_IOS_APP_ID')
  static final String firebaseIosAppId = _EnvProd.firebaseIosAppId;

  @EnviedField(varName: 'FIREBASE_IOS_BUNDLE_ID')
  static final String firebaseIosBundleId = _EnvProd.firebaseIosBundleId;

  // Firebase macOS
  @EnviedField(varName: 'FIREBASE_MACOS_APP_ID')
  static final String firebaseMacosAppId = _EnvProd.firebaseMacosAppId;

  @EnviedField(varName: 'FIREBASE_MACOS_BUNDLE_ID')
  static final String firebaseMacosBundleId = _EnvProd.firebaseMacosBundleId;

  // Firebase Web
  @EnviedField(varName: 'FIREBASE_WEB_API_KEY')
  static final String firebaseWebApiKey = _EnvProd.firebaseWebApiKey;

  @EnviedField(varName: 'FIREBASE_WEB_APP_ID')
  static final String firebaseWebAppId = _EnvProd.firebaseWebAppId;

  @EnviedField(varName: 'FIREBASE_WEB_MEASUREMENT_ID')
  static final String firebaseWebMeasurementId =
      _EnvProd.firebaseWebMeasurementId;

  // Firebase Windows
  @EnviedField(varName: 'FIREBASE_WINDOWS_APP_ID')
  static final String firebaseWindowsAppId = _EnvProd.firebaseWindowsAppId;

  @EnviedField(varName: 'FIREBASE_WINDOWS_MEASUREMENT_ID')
  static final String firebaseWindowsMeasurementId =
      _EnvProd.firebaseWindowsMeasurementId;

  // Maps
  @EnviedField(varName: 'KEY_MAPS')
  static final String keyMaps = _EnvProd.keyMaps;
}

class Env {
  static BuildFlavor? staticFlavor;

  static Future<void> init(BuildFlavor envFlavor) async {
    staticFlavor = envFlavor;
  }

  static String get baseUrl {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.baseUrl;
      case BuildFlavor.staging:
        return EnvStg.baseUrl;
      case BuildFlavor.development:
      case null:
        return EnvDev.baseUrl;
    }
  }

  static String get googleServerClientId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.googleServerClientId;
      case BuildFlavor.staging:
        return EnvStg.googleServerClientId;
      case BuildFlavor.development:
      case null:
        return EnvDev.googleServerClientId;
    }
  }

  // Firebase shared
  static String get firebaseMessagingSenderId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseMessagingSenderId;
      case BuildFlavor.staging:
        return EnvStg.firebaseMessagingSenderId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseMessagingSenderId;
    }
  }

  static String get firebaseProjectId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseProjectId;
      case BuildFlavor.staging:
        return EnvStg.firebaseProjectId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseProjectId;
    }
  }

  static String get firebaseStorageBucket {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseStorageBucket;
      case BuildFlavor.staging:
        return EnvStg.firebaseStorageBucket;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseStorageBucket;
    }
  }

  static String get firebaseAuthDomain {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseAuthDomain;
      case BuildFlavor.staging:
        return EnvStg.firebaseAuthDomain;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseAuthDomain;
    }
  }

  // Firebase Android
  static String get firebaseAndroidApiKey {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseAndroidApiKey;
      case BuildFlavor.staging:
        return EnvStg.firebaseAndroidApiKey;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseAndroidApiKey;
    }
  }

  static String get firebaseAndroidAppId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseAndroidAppId;
      case BuildFlavor.staging:
        return EnvStg.firebaseAndroidAppId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseAndroidAppId;
    }
  }

  // Firebase iOS
  static String get firebaseIosApiKey {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseIosApiKey;
      case BuildFlavor.staging:
        return EnvStg.firebaseIosApiKey;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseIosApiKey;
    }
  }

  static String get firebaseIosAppId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseIosAppId;
      case BuildFlavor.staging:
        return EnvStg.firebaseIosAppId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseIosAppId;
    }
  }

  static String get firebaseIosBundleId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseIosBundleId;
      case BuildFlavor.staging:
        return EnvStg.firebaseIosBundleId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseIosBundleId;
    }
  }

  // Firebase macOS
  static String get firebaseMacosAppId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseMacosAppId;
      case BuildFlavor.staging:
        return EnvStg.firebaseMacosAppId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseMacosAppId;
    }
  }

  static String get firebaseMacosBundleId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseMacosBundleId;
      case BuildFlavor.staging:
        return EnvStg.firebaseMacosBundleId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseMacosBundleId;
    }
  }

  // Firebase Web
  static String get firebaseWebApiKey {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseWebApiKey;
      case BuildFlavor.staging:
        return EnvStg.firebaseWebApiKey;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseWebApiKey;
    }
  }

  static String get firebaseWebAppId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseWebAppId;
      case BuildFlavor.staging:
        return EnvStg.firebaseWebAppId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseWebAppId;
    }
  }

  static String get firebaseWebMeasurementId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseWebMeasurementId;
      case BuildFlavor.staging:
        return EnvStg.firebaseWebMeasurementId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseWebMeasurementId;
    }
  }

  // Firebase Windows
  static String get firebaseWindowsAppId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseWindowsAppId;
      case BuildFlavor.staging:
        return EnvStg.firebaseWindowsAppId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseWindowsAppId;
    }
  }

  static String get firebaseWindowsMeasurementId {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.firebaseWindowsMeasurementId;
      case BuildFlavor.staging:
        return EnvStg.firebaseWindowsMeasurementId;
      case BuildFlavor.development:
      case null:
        return EnvDev.firebaseWindowsMeasurementId;
    }
  }

  // Maps
  static String get keyMaps {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.keyMaps;
      case BuildFlavor.staging:
        return EnvStg.keyMaps;
      case BuildFlavor.development:
      case null:
        return EnvDev.keyMaps;
    }
  }
}
