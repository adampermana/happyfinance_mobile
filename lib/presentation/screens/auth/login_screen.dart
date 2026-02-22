import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:happyfinance_mobile/business_logic/auth/auth_account/auth_account_bloc.dart';
import 'package:happyfinance_mobile/business_logic/auth/auth_bloc.dart';
import 'package:happyfinance_mobile/injector.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';
import 'package:happyfinance_mobile/presentation/enums/enum_widget.dart';
import 'package:happyfinance_mobile/presentation/routers/route_path.dart';
import 'package:happyfinance_mobile/presentation/widget/cache_images.dart';
import 'package:happyfinance_mobile/presentation/widget/custom_snackbars.dart';
import 'package:happyfinance_mobile/presentation/widget/custom_textfield.dart';
import 'package:happyfinance_mobile/presentation/widget/loading_screen.dart';
import 'package:happyfinance_mobile/presentation/widget/submit_button_styles.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(GlobalKey<FormState>.new);
    final username = useTextEditingController();
    final password = useTextEditingController();
    final theme = Theme.of(context);

    return BlocProvider(
      create: (context) => sl<AuthBloc>(),
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listenWhen: (p, c) =>
              p.loading != c.loading ||
              p.message != c.message ||
              p.successLogin != c.successLogin ||
              p.successRegister != c.successRegister,
          listener: (ctx, state) {
            if (state.loading) {
              LoadingOverlay.show(ctx);
            } else {
              LoadingOverlay.hide();
              if (state.successLogin) {
                ScaffoldMessenger.of(ctx).showSnackBar(
                  CustomSnackBar.success(
                    message: state.message ?? 'Opps, something went wrong',
                  ),
                );
                ctx.read<AuthAccountBloc>().add(
                  const AuthAccountEvent.checkAuthStatus(),
                );
              } else if (state.successRegister) {
                ScaffoldMessenger.of(ctx).showSnackBar(
                  CustomSnackBar.success(
                    message: state.message ?? 'Opps, something went wrong',
                  ),
                );

                // showOtpDialog(ctx);
              } else {
                ScaffoldMessenger.of(ctx).showSnackBar(
                  CustomSnackBar.failure(
                    message: state.message ?? 'Opps, something went wrong',
                  ),
                );
              }
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
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
                      'Langkah cerdas mengelola keuangan'
                      '\nuntuk masa depan yang lebih bahagia.',
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

                    SubmitButtonStylesWidget(
                      style: SubmitButtonStyle.elevated,
                      textButton: 'MASUK',
                      textButtonSize: 15,
                      height: 54,
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          context.read<AuthBloc>().add(
                            AuthEvent.postlogin(
                              email: username.text,
                              password: password.text,
                              deviceType: 'platform',
                              fcmToken: 'fcmToken',
                            ),
                          );
                        }
                      },
                    ),

                    const SizedBox(height: 28),

                    // or
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Color(0xFFE5E7EB),
                            thickness: 1,
                          ),
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
                          child: Divider(
                            color: Color(0xFFE5E7EB),
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    Material(
                      color: ColorPalette.kWhite,
                      borderRadius: BorderRadius.circular(12),
                      shadowColor: ColorPalette.kBlack,
                      elevation: 4,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(12),
                        child: const SizedBox(
                          width: 54,
                          height: 54,
                          child: Center(
                            child: CacheImageOrSvg(
                              source: 'assets/icons/icon-google.svg',
                            ),
                          ),
                        ),
                      ),
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
                          onTap: () async {
                            await context.push(RoutePath.registerPath);
                          },
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
            );
          },
        ),
      ),
    );
  }
}
