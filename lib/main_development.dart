import 'package:happyfinance_mobile/bootstrap.dart';
import 'package:happyfinance_mobile/presentation/app/app.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
