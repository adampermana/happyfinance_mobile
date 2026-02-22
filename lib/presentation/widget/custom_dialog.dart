import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';
import 'package:happyfinance_mobile/presentation/enums/enum_widget.dart';
import 'package:happyfinance_mobile/presentation/widget/submit_button_styles.dart';
import 'package:pinput/pinput.dart';

/// Menampilkan dialog OTP verifikasi.
///
/// [email] – email tujuan OTP (ditampilkan di subtitle).
/// [length] – jumlah digit OTP (default 4).
/// [countdownSeconds] – durasi countdown kirim ulang (default 60).
/// [onVerify] – callback saat tombol "Verifikasi" ditekan, membawa nilai OTP.
/// [onResend] – callback saat "Kirim ulang" ditekan.
Future<void> showOtpDialog(
  BuildContext context, {
  String? email,
  int length = 4,
  int countdownSeconds = 60,
  ValueChanged<String>? onVerify,
  VoidCallback? onResend,
}) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => _OtpDialog(
      email: email,
      length: length,
      countdownSeconds: countdownSeconds,
      onVerify: onVerify,
      onResend: onResend,
    ),
  );
}

class _OtpDialog extends StatefulWidget {
  const _OtpDialog({
    this.email,
    this.length = 4,
    this.countdownSeconds = 60,
    this.onVerify,
    this.onResend,
  });

  final String? email;
  final int length;
  final int countdownSeconds;
  final ValueChanged<String>? onVerify;
  final VoidCallback? onResend;

  @override
  State<_OtpDialog> createState() => _OtpDialogState();
}

class _OtpDialogState extends State<_OtpDialog> {
  late final TextEditingController _pinController;
  late final FocusNode _focusNode;
  late int _remaining;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pinController = TextEditingController();
    _focusNode = FocusNode();
    _remaining = widget.countdownSeconds;
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _remaining = widget.countdownSeconds;
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_remaining <= 0) {
        t.cancel();
      } else {
        setState(() => _remaining--);
      }
    });
  }

  String get _formattedTime {
    final m = (_remaining ~/ 60).toString().padLeft(2, '0');
    final s = (_remaining % 60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pinController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: ColorPalette.kGrey900,
      ),
      decoration: BoxDecoration(
        color: ColorPalette.kGrey50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorPalette.kGrey200),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: ColorPalette.kPurple, width: 2),
      ),
    );

    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: ColorPalette.kRed600, width: 2),
      ),
    );

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 28),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Verifikasi Akun',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: ColorPalette.kGrey900,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.email != null
                  ? 'Kami telah mengirimkan kode OTP ke email\n${widget.email}.'
                  : 'Kami telah mengirimkan kode OTP ke email Anda.',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                color: ColorPalette.kGrey500,
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24),

            // ── Pinput ──
            Pinput(
              length: widget.length,
              controller: _pinController,
              focusNode: _focusNode,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              errorPinTheme: errorPinTheme,
              pinputAutovalidateMode: PinputAutovalidateMode.disabled,
              closeKeyboardWhenCompleted: false,
            ),
            const SizedBox(height: 16),

            // ── Countdown / Resend ──
            if (_remaining > 0)
              Text.rich(
                TextSpan(
                  text: 'Kirim ulang dalam ',
                  style: const TextStyle(
                    fontSize: 13,
                    color: ColorPalette.kGrey400,
                  ),
                  children: [
                    TextSpan(
                      text: _formattedTime,
                      style: const TextStyle(
                        color: ColorPalette.kPurple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
            else
              GestureDetector(
                onTap: () {
                  widget.onResend?.call();
                  _startTimer();
                },
                child: const Text(
                  'Kirim ulang kode',
                  style: TextStyle(
                    fontSize: 13,
                    color: ColorPalette.kPurple,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            const SizedBox(height: 24),

            // ── Verify button ──
            SubmitButtonStylesWidget(
              style: SubmitButtonStyle.elevated,
              textButton: 'Verifikasi',
              textButtonSize: 15,
              onPressed: () {
                final pin = _pinController.text;
                if (pin.length == widget.length) {
                  widget.onVerify?.call(pin);
                }
              },
            ),
            const SizedBox(height: 12),
            SubmitButtonStylesWidget(
              style: SubmitButtonStyle.text,
              textButton: 'Batal',
              primaryColor: ColorPalette.kGrey500,
              textButtonSize: 15,
              onPressed: () => context.pop(),
            ),
          ],
        ),
      ),
    );
  }
}
