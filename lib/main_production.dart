import 'package:happyfinance_mobile/app/app.dart';
import 'package:happyfinance_mobile/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
