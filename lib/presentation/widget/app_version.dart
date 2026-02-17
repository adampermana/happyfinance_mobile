import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:happyfinance_mobile/infrastructure/extension/device_responsive_extension.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppVersionWidget extends HookWidget {
  const AppVersionWidget({super.key, this.textColor = ColorPalette.kWhite});

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final version = useState<String>('Loading...');

    useEffect(() {
      Future<void> loadVersion() async {
        final packageInfo = await PackageInfo.fromPlatform();
        version.value = packageInfo.version;
      }

      final _ = loadVersion();
      return null;
    }, []);

    return Center(
      child: Text(
        'Version: ${version.value}',
        style: TextStyle(
          color: textColor,
          fontSize: context.isTabletLarge
              ? 16
              : context.isTabletMedium
              ? 16
              : context.isTabletSmall
              ? 16
              : context.isPhoneLarge
              ? 16
              : context.isPhoneMedium
              ? 12
              : context.isPhoneSmall
              ? 12
              : 12,
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    );
  }
}
