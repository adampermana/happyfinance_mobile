import 'package:flutter/material.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';
import 'package:happyfinance_mobile/presentation/enums/enum_widget.dart';

class SubmitButtonStylesWidget extends StatelessWidget {
  const SubmitButtonStylesWidget({
    required this.style,
    super.key,
    this.textButton = 'Submit',
    this.textButtonSize, // New property for height,
    this.textDecoration = TextDecoration.none,
    this.child,
    this.isLoading = false,
    this.onPressed,
    this.primaryColor,
    this.height, // New property for height
    this.width, // New property for width
    this.radius = 4.0, // New property for button radius
    this.icon, // New property for custom icon
    this.useGradient = false, // New property to use gradient
    this.gradient,
    this.textButtonColor, // New property for custom gradient
  });

  final SubmitButtonStyle style;
  final String? textButton;
  final double? textButtonSize; // New property for height
  final Color? textButtonColor;
  final TextDecoration textDecoration;
  final Widget? child;
  final bool isLoading;
  final VoidCallback? onPressed;
  final Color? primaryColor;
  final double? height; // New property for height
  final double? width; // New property for width
  final double radius; // New property for button radius
  final Widget? icon; // New property for custom icon
  final bool useGradient; // New property to use gradient
  final Gradient? gradient; // New property for custom gradient

  @override
  Widget build(BuildContext context) {
    switch (style) {
      case SubmitButtonStyle.elevated:
        return _elevatedButton(context);
      case SubmitButtonStyle.outlined:
        return _outlinedButton(context);
      case SubmitButtonStyle.text:
        return _textButton(context, textDecoration);
    }
  }

  Widget _elevatedButton(BuildContext context) {
    final buttonChild = isLoading
        ? const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 2,
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ?icon,
              SizedBox(width: icon != null ? 8.0 : 0.0),
              child ??
                  Text(
                    textButton!,
                    style: TextStyle(
                      color: textButtonColor ?? ColorPalette.kWhite,
                      fontSize: textButtonSize,
                    ),
                  ),
            ],
          );

    final button = ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: useGradient ? Colors.transparent : primaryColor,
        elevation: 0,
        padding: EdgeInsets.zero, // penting untuk gradient
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: buttonChild,
    );

    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 36.0,
      child: useGradient
          ? Container(
              decoration: BoxDecoration(
                gradient: gradient,
                borderRadius: BorderRadius.circular(radius),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(radius),
                child: button,
              ),
            )
          : button,
    );
  }

  Widget _outlinedButton(BuildContext context) {
    final theme = Theme.of(context);
    return OutlinedButton(
      onPressed: isLoading ? null : onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: primaryColor,
        side: BorderSide(
          color: onPressed == null
              ? theme.disabledColor
              : primaryColor ?? theme.primaryColor,
        ),
        minimumSize: Size(width ?? double.infinity, height ?? 36.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: isLoading
          ? SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ?icon,
                SizedBox(width: icon != null ? 8.0 : 0.0),
                child ?? Text(textButton!),
              ],
            ),
    );
  }

  Widget _textButton(BuildContext context, TextDecoration textDecoration) {
    return TextButton(
      onPressed: isLoading ? null : onPressed,
      style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        minimumSize: Size(width ?? double.infinity, height ?? 36.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: isLoading
          ? SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor,
                ),
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ?icon,
                SizedBox(width: icon != null ? 8.0 : 0.0),
                child ??
                    Text(
                      textButton!,
                      style: TextStyle(
                        fontSize: textButtonSize,
                        decoration: textDecoration,
                        color: ColorPalette.kBlack,
                        fontWeight: FontWeight.w400,
                        decorationColor: ColorPalette.kBlack,
                        decorationThickness: 1.4,
                      ),
                    ),
              ],
            ),
    );
  }
}
