part of '../../bootstrap.dart';

Widget customFlavorBanner({required Widget child, required String flavor}) {
  if (flavor.isEmpty) {
    return child;
  }

  return Directionality(
    textDirection: TextDirection.ltr, // Atur arah teks
    child: Banner(
      message: flavor.toUpperCase(),
      location: BannerLocation.topEnd,
      color: flavor == 'dev' ? ColorPalette.kBanerRed : ColorPalette.kBanerRed,
      textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      child: child,
    ),
  );
}
