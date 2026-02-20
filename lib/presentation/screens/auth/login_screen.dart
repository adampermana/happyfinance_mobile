import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';
import 'package:happyfinance_mobile/presentation/widget/cache_images.dart';
import 'package:happyfinance_mobile/presentation/widget/custom_textfield.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final username = useTextEditingController();
    final password = useTextEditingController();
    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  color: ColorPalette.kPurple50,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Icon(
                    Icons.account_balance_wallet_rounded,
                    color: ColorPalette.kPurple,
                    size: 36,
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // Headline
              Text(
                'Wujudkan Kebebasan\nFinansial',
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: ColorPalette.kGrey900,
                  fontWeight: FontWeight.w800,
                  height: 1.25,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Langkah cerdas mengelola keuangan\nuntuk masa depan yang lebih bahagia.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: ColorPalette.kGrey500,
                  fontWeight: FontWeight.w400,
                  height: 1.6,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 36),

              // Email / Username field
              CustomEmailFormField(
                controller: username,
                hintText: 'Email atau Username',
                labelText: null,
                showShadow: true,
                fillColor: Colors.white,
                hintStyle: const TextStyle(
                  color: ColorPalette.kGrey400,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textStyle: const TextStyle(
                  fontSize: 14,
                  color: ColorPalette.kGrey900,
                  fontWeight: FontWeight.w400,
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'Email / username tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),

              // Password field
              CustomPasswordFormField(
                controller: password,
                hintText: 'Kata Sandi',
                showShadow: true,
                fillColor: Colors.white,
                hintStyle: const TextStyle(
                  color: ColorPalette.kGrey400,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textStyle: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF111827),
                  fontWeight: FontWeight.w400,
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'Kata sandi tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              // Lupa Password
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Lupa Password?',
                    style: TextStyle(
                      color: ColorPalette.kPurple,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // ── Login button ─────────────────────────────────────────
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {}
                  },
                  child: const Text(
                    'MASUK',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // or
              const Row(
                children: [
                  Expanded(
                    child: Divider(color: Color(0xFFE5E7EB), thickness: 1),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'ATAU LANJUTKAN DENGAN',
                    style: TextStyle(
                      color: Color(0xFF9CA3AF),
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.8,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Divider(color: Color(0xFFE5E7EB), thickness: 1),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Social Buttons
              Row(
                children: [
                  Expanded(
                    child: _SocialButton(
                      onTap: () {},
                      child: const CacheImageOrSvg(
                        source: 'assets/icons/icon-google.svg',
                        width: 28,
                        height: 28,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _SocialButton(
                      onTap: () {},
                      child: const Icon(
                        Icons.apple,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 36),

              // Register link
              Row(
                spacing: 4,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Belum punya akun? ',
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'DAFTAR SEKARANG',
                      style: TextStyle(
                        color: ColorPalette.kPurple,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Social login button ─────────────────────────────────────────────────────────
class _SocialButton extends StatelessWidget {
  const _SocialButton({required this.onTap, required this.child});

  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE5E7EB)),
        ),
        child: Center(child: child),
      ),
    );
  }
}
