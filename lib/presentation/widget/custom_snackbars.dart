import 'package:flutter/material.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';

const Duration kSnackBarDuration = Duration(milliseconds: 1500);

class FloatingSnackBar {
  FloatingSnackBar({
    required this.message,
    required this.context,
    this.icon,
    this.duration,
    this.textStyle = const TextStyle(),
    this.textColor = const TextStyle(),
    this.backgroundColor = Colors.black,
  });
  final String? message;
  final BuildContext context;
  final IconData? icon;
  final Duration? duration;
  final TextStyle? textStyle;
  final TextStyle? textColor;
  final Color? backgroundColor;

  void show() {
    final snack = SnackBar(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) Icon(icon, size: 12),
          const SizedBox(width: 5),
          Text(message ?? '', style: textStyle),
        ],
      ),
      backgroundColor: backgroundColor,
      duration: duration ?? const Duration(milliseconds: 4000),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      width: 100,
      margin: const EdgeInsets.all(20),
    );
    ScaffoldMessenger.of(context).showSnackBar(snack);
  }
}

enum SnackBarType { success, failure, networkInfo }

class CustomSnackBar extends SnackBar {
  CustomSnackBar({
    required String message,
    super.key,
    SnackBarType type = SnackBarType.success,
    IconData? iconData,
    super.action,
    EdgeInsetsGeometry? margin,
  }) : super(
         content: _buildContent(type, message, iconData),
         backgroundColor: _getBackgroundColor(type),
         duration: _getDuration(type),
         behavior: _getBehavior(type),
         shape: _getShape(type),
         width: _getWidth(type),
         margin: _getMargin(type, margin),
       );
  // Factory constructors untuk kemudahan penggunaan
  factory CustomSnackBar.success({
    required String message,
    Key? key,
    SnackBarAction? action,
  }) {
    return CustomSnackBar(message: message, key: key, action: action);
  }

  factory CustomSnackBar.failure({
    required String message,
    Key? key,
    EdgeInsetsGeometry? margin,
  }) {
    return CustomSnackBar(
      message: message,
      key: key,
      type: SnackBarType.failure,
      margin: margin,
    );
  }

  factory CustomSnackBar.networkInfo({
    required String message,
    Key? key,
    IconData iconData = Icons.wifi_rounded,
  }) {
    return CustomSnackBar(
      message: message,
      key: key,
      type: SnackBarType.networkInfo,
      iconData: iconData,
    );
  }

  static Widget _buildContent(
    SnackBarType type,
    String message,
    IconData? iconData,
  ) {
    switch (type) {
      case SnackBarType.networkInfo:
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData ?? Icons.wifi_rounded,
              color: ColorPalette.kBanerRed,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              message,
              style: const TextStyle(
                color: ColorPalette.primaryColor,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        );
      case SnackBarType.success:
      case SnackBarType.failure:
        return Text(
          message,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        );
    }
  }

  static Color _getBackgroundColor(SnackBarType type) {
    switch (type) {
      case SnackBarType.success:
        return Colors.green;
      case SnackBarType.failure:
        return Colors.red;
      case SnackBarType.networkInfo:
        return Colors.white;
    }
  }

  static Duration _getDuration(SnackBarType type) {
    switch (type) {
      case SnackBarType.networkInfo:
        return const Duration(milliseconds: 1200);
      case SnackBarType.success:
      case SnackBarType.failure:
        return kSnackBarDuration;
    }
  }

  static SnackBarBehavior? _getBehavior(SnackBarType type) {
    switch (type) {
      case SnackBarType.failure:
      case SnackBarType.networkInfo:
        return SnackBarBehavior.floating;
      case SnackBarType.success:
        return null;
    }
  }

  static ShapeBorder? _getShape(SnackBarType type) {
    if (type == SnackBarType.networkInfo) {
      return const StadiumBorder();
    }
    return null;
  }

  static double? _getWidth(SnackBarType type) {
    if (type == SnackBarType.networkInfo) {
      return 180;
    }
    return null;
  }

  static EdgeInsetsGeometry? _getMargin(
    SnackBarType type,
    EdgeInsetsGeometry? customMargin,
  ) {
    if (type == SnackBarType.failure && customMargin != null) {
      return customMargin.add(const EdgeInsets.fromLTRB(15, 5, 15, 10));
    }
    return customMargin;
  }
}
