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

  @EnviedField(varName: 'FIREBASE_ANDROID_API_KEY')
  static final String firebaseAndroidApiKey = _EnvDev.firebaseAndroidApiKey;

  @EnviedField(varName: 'FIREBASE_ANDROID_APP_ID')
  static final String firebaseAndroidAppId = _EnvDev.firebaseAndroidAppId;

  @EnviedField(varName: 'FIREBASE_MESSAGING_SENDER_ID')
  static final String firebaseMessagingSenderId =
      _EnvDev.firebaseMessagingSenderId;

  @EnviedField(varName: 'FIREBASE_PROJECT_ID')
  static final String firebaseProjectId = _EnvDev.firebaseProjectId;

  @EnviedField(varName: 'FIREBASE_STORAGE_BUCKET')
  static final String firebaseStorageBucket = _EnvDev.firebaseStorageBucket;

  @EnviedField(varName: 'FIREBASE_IOS_API_KEY')
  static final String firebaseIosApiKey = _EnvDev.firebaseIosApiKey;

  @EnviedField(varName: 'FIREBASE_IOS_APP_ID')
  static final String firebaseIosAppId = _EnvDev.firebaseIosAppId;

  @EnviedField(varName: 'FIREBASE_IOS_BUNDLE_ID')
  static final String firebaseIosBundleId = _EnvDev.firebaseIosBundleId;

  @EnviedField(varName: 'KEY_SOCKET')
  static final String keySocket = _EnvDev.keySocket;

  @EnviedField(varName: 'HOST_SOCKET')
  static final String hostSocket = _EnvDev.hostSocket;

  @EnviedField(varName: 'ENDPOINT_CHANNEL_SOCKET')
  static final String endpointChannelSocket = _EnvDev.endpointChannelSocket;

  @EnviedField(varName: 'PORT_SOCKET')
  static final String portSocket = _EnvDev.portSocket;

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

  @EnviedField(varName: 'FIREBASE_ANDROID_API_KEY')
  static final String firebaseAndroidApiKey = _EnvStg.firebaseAndroidApiKey;

  @EnviedField(varName: 'FIREBASE_ANDROID_APP_ID')
  static final String firebaseAndroidAppId = _EnvStg.firebaseAndroidAppId;

  @EnviedField(varName: 'FIREBASE_MESSAGING_SENDER_ID')
  static final String firebaseMessagingSenderId =
      _EnvStg.firebaseMessagingSenderId;

  @EnviedField(varName: 'FIREBASE_PROJECT_ID')
  static final String firebaseProjectId = _EnvStg.firebaseProjectId;

  @EnviedField(varName: 'FIREBASE_STORAGE_BUCKET')
  static final String firebaseStorageBucket = _EnvStg.firebaseStorageBucket;

  @EnviedField(varName: 'FIREBASE_IOS_API_KEY')
  static final String firebaseIosApiKey = _EnvStg.firebaseIosApiKey;

  @EnviedField(varName: 'FIREBASE_IOS_APP_ID')
  static final String firebaseIosAppId = _EnvStg.firebaseIosAppId;

  @EnviedField(varName: 'FIREBASE_IOS_BUNDLE_ID')
  static final String firebaseIosBundleId = _EnvStg.firebaseIosBundleId;

  @EnviedField(varName: 'KEY_SOCKET')
  static final String keySocket = _EnvStg.keySocket;

  @EnviedField(varName: 'HOST_SOCKET')
  static final String hostSocket = _EnvStg.hostSocket;

  @EnviedField(varName: 'ENDPOINT_CHANNEL_SOCKET')
  static final String endpointChannelSocket = _EnvStg.endpointChannelSocket;

  @EnviedField(varName: 'PORT_SOCKET')
  static final String portSocket = _EnvStg.portSocket;

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

  @EnviedField(varName: 'FIREBASE_ANDROID_API_KEY')
  static final String firebaseAndroidApiKey = _EnvProd.firebaseAndroidApiKey;

  @EnviedField(varName: 'FIREBASE_ANDROID_APP_ID')
  static final String firebaseAndroidAppId = _EnvProd.firebaseAndroidAppId;

  @EnviedField(varName: 'FIREBASE_MESSAGING_SENDER_ID')
  static final String firebaseMessagingSenderId =
      _EnvProd.firebaseMessagingSenderId;

  @EnviedField(varName: 'FIREBASE_PROJECT_ID')
  static final String firebaseProjectId = _EnvProd.firebaseProjectId;

  @EnviedField(varName: 'FIREBASE_STORAGE_BUCKET')
  static final String firebaseStorageBucket = _EnvProd.firebaseStorageBucket;

  @EnviedField(varName: 'FIREBASE_IOS_API_KEY')
  static final String firebaseIosApiKey = _EnvProd.firebaseIosApiKey;

  @EnviedField(varName: 'FIREBASE_IOS_APP_ID')
  static final String firebaseIosAppId = _EnvProd.firebaseIosAppId;

  @EnviedField(varName: 'FIREBASE_IOS_BUNDLE_ID')
  static final String firebaseIosBundleId = _EnvProd.firebaseIosBundleId;

  @EnviedField(varName: 'KEY_SOCKET')
  static final String keySocket = _EnvProd.keySocket;

  @EnviedField(varName: 'HOST_SOCKET')
  static final String hostSocket = _EnvProd.hostSocket;

  @EnviedField(varName: 'ENDPOINT_CHANNEL_SOCKET')
  static final String endpointChannelSocket = _EnvProd.endpointChannelSocket;

  @EnviedField(varName: 'PORT_SOCKET')
  static final String portSocket = _EnvProd.portSocket;

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

  static String get keySocket {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.keySocket;
      case BuildFlavor.staging:
        return EnvStg.keySocket;
      case BuildFlavor.development:
      case null:
        return EnvDev.keySocket;
    }
  }

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

  static String get hostSocket {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.hostSocket;
      case BuildFlavor.staging:
        return EnvStg.hostSocket;
      case BuildFlavor.development:
      case null:
        return EnvDev.hostSocket;
    }
  }

  static String get endpointChannelSocket {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.endpointChannelSocket;
      case BuildFlavor.staging:
        return EnvStg.endpointChannelSocket;
      case BuildFlavor.development:
      case null:
        return EnvDev.endpointChannelSocket;
    }
  }

  static String get portSocket {
    switch (staticFlavor) {
      case BuildFlavor.production:
        return EnvProd.portSocket;
      case BuildFlavor.staging:
        return EnvStg.portSocket;
      case BuildFlavor.development:
      case null:
        return EnvDev.portSocket;
    }
  }
}
