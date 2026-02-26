import 'package:happyfinance_mobile/bootstrap.dart';
import 'package:happyfinance_mobile/domains/env/env_model.dart';
import 'package:happyfinance_mobile/presentation/app/app.dart';

Future<void> main() async {
  await bootstrap(
    () => customFlavorBanner(flavor: 'staging', child: const App()),
    BuildFlavor.staging,
  );
}
