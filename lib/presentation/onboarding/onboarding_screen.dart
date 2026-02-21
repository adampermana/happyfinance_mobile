import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:happyfinance_mobile/business_logic/core/core_cubit.dart';
import 'package:happyfinance_mobile/infrastructure/extension/device_responsive_extension.dart';
import 'package:happyfinance_mobile/presentation/app/resources/color_palette.dart';
import 'package:happyfinance_mobile/presentation/routers/route_path.dart';
import 'package:happyfinance_mobile/presentation/widget/cache_images.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CoreCubit, CoreState>(
      listenWhen: (prev, next) =>
          prev.isBoarding != next.isBoarding ||
          prev.isSubmmitBoard != next.isSubmmitBoard,
      listener: (context, state) {
        // after berhasil => login
        if (state.isBoarding) {
          debugPrint('===== //${state.isBoarding} ke login');
          context.go(RoutePath.loginPath);
        }
      },
      child: BlocBuilder<CoreCubit, CoreState>(
        builder: (context, state) {
          return OnBoardingSlider(
            centerBackground: true,
            totalPage: 3,
            finishButtonText: 'Mulai',
            imageVerticalOffset: 130,
            nextButtonText: 'Selanjutnya',
            finishButtonTextStyle: const TextStyle(
              fontSize: 20,
              color: ColorPalette.kWhite,
              fontWeight: FontWeight.w700,
            ),
            finishButtonStyle: FinishButtonStyle(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            // controllerColor: ColorPalette.kTeal,
            pageBackgroundColor: ColorPalette.scaffoldBackground,
            onFinish: () async {
              await context.read<CoreCubit>().saveBoardingScreen();
            },
            backgroundImageAlignments: const [
              Alignment.center,
              Alignment.center,
              Alignment.center,
            ],
            background: const [
              CacheImageOrSvg(
                source: 'assets/onboarding/landing1.png',
                fit: BoxFit.contain,
              ),
              CacheImageOrSvg(
                source: 'assets/onboarding/landing2.png',
                fit: BoxFit.contain,
              ),
              CacheImageOrSvg(
                source: 'assets/onboarding/landing3.png',
                fit: BoxFit.contain,
              ),
            ],
            speed: 1,
            pageBodies: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      SizedBox(
                        height: context.isTabletLarge
                            ? 800
                            : context.isTabletMedium
                            ? 600
                            : context.isTabletSmall
                            ? 800
                            : context.isPhoneLarge
                            ? 400
                            : context.isPhoneMedium
                            ? 300
                            : context.isPhoneSmall
                            ? 400
                            : 400,
                      ),
                      Text(
                        'Ragu Saat Belanja?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: context.isTabletLarge
                              ? 48
                              : context.isTabletMedium
                              ? 48
                              : context.isTabletSmall
                              ? 48
                              : context.isPhoneMedium
                              ? 24
                              : 24,
                          fontWeight: FontWeight.w700,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Pastikan yang kamu konsumsi\naman dan sesuai syariat.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorPalette.kBlack.withValues(alpha: 0.4),
                          fontSize: context.isTabletLarge
                              ? 48
                              : context.isTabletMedium
                              ? 30
                              : context.isTabletSmall
                              ? 30
                              : context.isPhoneMedium
                              ? 14
                              : 14,
                          fontWeight: FontWeight.w400,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    SizedBox(
                      height: context.isTabletLarge
                          ? 800
                          : context.isTabletMedium
                          ? 600
                          : context.isTabletSmall
                          ? 800
                          : context.isPhoneLarge
                          ? 400
                          : context.isPhoneMedium
                          ? 300
                          : context.isPhoneSmall
                          ? 400
                          : 400,
                    ),
                    Text(
                      'Scan Merk Produk',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorPalette.kBlack,
                        fontSize: context.isTabletLarge
                            ? 48
                            : context.isTabletMedium
                            ? 48
                            : context.isTabletSmall
                            ? 48
                            : context.isPhoneMedium
                            ? 24
                            : 24,
                        fontWeight: FontWeight.w700,
                        height: 1.1,
                      ),
                    ),
                    Text(
                      'Posisikan produk ada di dalam bingkai kamera\n(Merk / Logo, Barcode)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ColorPalette.kBlack.withValues(alpha: 0.4),
                        fontSize: context.isTabletLarge
                            ? 48
                            : context.isTabletMedium
                            ? 30
                            : context.isTabletSmall
                            ? 30
                            : context.isPhoneMedium
                            ? 13
                            : 13,
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      SizedBox(
                        height: context.isTabletLarge
                            ? 800
                            : context.isTabletMedium
                            ? 600
                            : context.isTabletSmall
                            ? 800
                            : context.isPhoneLarge
                            ? 400
                            : context.isPhoneMedium
                            ? 300
                            : context.isPhoneSmall
                            ? 400
                            : 400,
                      ),
                      Text(
                        'Info Detail & Akurat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorPalette.kBlack,
                          fontSize: context.isTabletLarge
                              ? 48
                              : context.isTabletMedium
                              ? 48
                              : context.isTabletSmall
                              ? 48
                              : context.isPhoneMedium
                              ? 24
                              : 24,
                          fontWeight: FontWeight.w700,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Status kehalalan tersedia dalam\nhitungan detik.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorPalette.kBlack.withValues(alpha: 0.4),
                          fontSize: context.isTabletLarge
                              ? 48
                              : context.isTabletMedium
                              ? 30
                              : context.isTabletSmall
                              ? 30
                              : context.isPhoneMedium
                              ? 14
                              : 14,
                          fontWeight: FontWeight.w400,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            headerBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
          );
        },
      ),
    );
  }
}
