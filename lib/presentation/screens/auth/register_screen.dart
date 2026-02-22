import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';
import 'package:happyfinance_mobile/presentation/enums/enum_widget.dart';
import 'package:happyfinance_mobile/presentation/widget/custom_dialog.dart';
import 'package:happyfinance_mobile/presentation/widget/custom_textfield.dart';
import 'package:happyfinance_mobile/presentation/widget/submit_button_styles.dart';

class RegisterScreen extends HookWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final fullName = useTextEditingController();
    final email = useTextEditingController();
    final phone = useTextEditingController();
    final password = useTextEditingController();
    final confirmPassword = useTextEditingController();
    final theme = Theme.of(context);

    // Shared border color for all fields
    const borderColor = ColorPalette.kGrey200;
    const fieldTextStyle = TextStyle(
      fontSize: 14,
      color: ColorPalette.kGrey900,
      fontWeight: FontWeight.w400,
    );
    const hintTextStyle = TextStyle(
      color: ColorPalette.kGrey400,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    );

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back button
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  icon: const Icon(
                    Icons.chevron_left_rounded,
                    size: 32,
                    color: ColorPalette.kPurple,
                  ),
                  onPressed: () => Navigator.of(context).maybePop(),
                ),
                const SizedBox(height: 20),

                // Headline
                Text(
                  'Buat Akun Baru',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    color: ColorPalette.kGrey900,
                    fontWeight: FontWeight.w800,
                    height: 1.25,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Kelola keuangan Anda dengan lebih simpel\ndan bahagia.',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: ColorPalette.kGrey500,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 32),

                // Nama Lengkap
                CustomTextFormFieldWidget(
                  controller: fullName,
                  hintText: 'Nama Lengkap',
                  hintStyle: hintTextStyle,
                  textStyle: fieldTextStyle,
                  fillColor: Colors.white,
                  useBorder: true,
                  colorBorder: borderColor,
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return 'Nama lengkap tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Email
                CustomEmailFormField(
                  controller: email,
                  hintText: 'Email',
                  // labelText: null,
                  // showSuggestions: true,
                  fillColor: Colors.white,
                  useBorder: true,
                  colorBorder: borderColor,
                  hintStyle: hintTextStyle,
                  textStyle: fieldTextStyle,
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return 'Email tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Nomor Telepon
                CustomPhoneFormField(
                  controller: phone,
                  hintText: 'Nomor Telepon',
                  // labelText: null,
                  fillColor: Colors.white,
                  useBorder: true,
                  colorBorder: borderColor,
                  hintStyle: hintTextStyle,
                  textStyle: fieldTextStyle,
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return 'Nomor telepon tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Kata Sandi
                CustomPasswordFormField(
                  controller: password,
                  hintText: 'Kata Sandi',
                  // labelText: null,
                  fillColor: Colors.white,
                  useBorder: true,
                  colorBorder: borderColor,
                  hintStyle: hintTextStyle,
                  textStyle: fieldTextStyle,
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return 'Kata sandi tidak boleh kosong';
                    }
                    if (v.length < 8) {
                      return 'Kata sandi minimal 8 karakter';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),

                // Konfirmasi Kata Sandi
                CustomPasswordFormField(
                  controller: confirmPassword,
                  hintText: 'Konfirmasi Kata Sandi',
                  labelText: null,
                  fillColor: Colors.white,
                  useBorder: true,
                  colorBorder: borderColor,
                  hintStyle: hintTextStyle,
                  textStyle: fieldTextStyle,
                  validator: (v) {
                    if (v == null || v.isEmpty) {
                      return 'Konfirmasi kata sandi tidak boleh kosong';
                    }
                    if (v != password.text) {
                      return 'Kata sandi tidak cocok';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 28),

                // DAFTAR button
                SubmitButtonStylesWidget(
                  style: SubmitButtonStyle.elevated,
                  height: 54,
                  textButtonSize: 15,
                  textButton: 'DAFTAR',
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      // TODO: trigger register event
                      showOtpDialog(
                        context,
                        email: 'user@gmail.com', // opsional, tampil di subtitle
                        length: 4, // jumlah digit OTP
                        countdownSeconds: 60, // durasi countdown kirim ulang
                        onVerify: (pin) {
                          // handle verifikasi OTP
                        },
                        onResend: () {
                          // handle kirim ulang OTP
                        },
                      );
                    }
                  },
                ),

                const SizedBox(height: 24),

                // Login link
                Row(
                  spacing: 4,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Sudah punya akun?',
                      style: TextStyle(
                        color: ColorPalette.kGrey500,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).maybePop(),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: ColorPalette.kPurple,
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Security note
                const Row(
                  spacing: 6,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shield_outlined,
                      size: 14,
                      color: ColorPalette.kGrey400,
                    ),
                    Text(
                      'Data Anda aman dan terenkripsi.',
                      style: TextStyle(
                        color: ColorPalette.kGrey400,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
