import 'dart:io';

// import 'package:saras_mobile/domains/env/env_model.dart';

class HappyHttpOvverides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (_, host, port) {
        final url = Uri.parse('https://api.example.com');
        return host == url.host && (!url.hasPort || port == url.port);
      };
  }
}
