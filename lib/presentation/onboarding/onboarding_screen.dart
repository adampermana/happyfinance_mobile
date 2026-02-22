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
      listenWhen: (prev, next) => prev.isSubmmitBoard != next.isSubmmitBoard,
      listener: (context, state) {
        if (state.isSubmmitBoard) {
          debugPrint('===== //${state.isBoarding} ke login');
          context.go(RoutePath.loginPath);
        }
      },
      child: BlocBuilder<CoreCubit, CoreState>(
        builder: (context, state) {
          return OnBoardingSlider(
            skipFunctionOverride: () {
              debugPrint('===== //${state.isBoarding} ke login');
              context.go(RoutePath.loginPath);
            },
            centerBackground: true,
            skipTextButton: const Text(
              'Lewati',
              style: TextStyle(
                fontSize: 13,
                color: ColorPalette.kBlack,
                fontWeight: FontWeight.w500,
              ),
            ),
            totalPage: 3,
            finishButtonText: 'Mulai Sekarang',
            imageVerticalOffset: 100,
            nextButtonText: 'Selanjutnya',
            controllerColor: ColorPalette.primaryColor,
            finishButtonTextStyle: const TextStyle(
              fontSize: 20,
              color: ColorPalette.kWhite,
              fontWeight: FontWeight.w700,
            ),
            finishButtonStyle: FinishButtonStyle(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: ColorPalette.primaryColor,
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
                source: 'assets/images/landing1.png',
                fit: BoxFit.contain,
              ),
              CacheImageOrSvg(
                source: 'assets/images/landing2.png',
                fit: BoxFit.contain,
              ),
              CacheImageOrSvg(
                source: 'assets/images/landing3.png',
                fit: BoxFit.none,
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
                            ? 500
                            : context.isPhoneMedium
                            ? 500
                            : context.isPhoneSmall
                            ? 400
                            : 400,
                      ),
                      Text(
                        'Pantau Keuanganmu\nsetiap saat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: context.isTabletLarge
                              ? 48
                              : context.isTabletMedium
                              ? 48
                              : context.isTabletSmall
                              ? 48
                              : context.isPhoneMedium
                              ? 30
                              : 24,
                          fontWeight: FontWeight.w700,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Catat pemasukan dan pengeluaran Anda'
                        '\nsecara otomatis dengan mudah dan cepat.',
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
                              ? 16
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
                          ? 500
                          : context.isPhoneMedium
                          ? 500
                          : context.isPhoneSmall
                          ? 400
                          : 400,
                    ),
                    Text(
                      'Bebas dari Utang',
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
                            ? 30
                            : 24,
                        fontWeight: FontWeight.w700,
                        height: 1.1,
                      ),
                    ),
                    Text(
                      'Kelola utang dan piutang dengan pengingat'
                      '\ncerdas agar finansial tetap sehat.',
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
                            ? 16
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
                            ? 500
                            : context.isPhoneMedium
                            ? 500
                            : context.isPhoneSmall
                            ? 400
                            : 400,
                      ),
                      Text(
                        'Mulai hidup\nbahagia',
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
                              ? 30
                              : 24,
                          fontWeight: FontWeight.w700,
                          height: 1.1,
                        ),
                      ),
                      Text(
                        'Siap untuk mengontrol keuangan'
                        '\nAnda? Mari bergabung degan jutaan pengguna lainnya.',
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
                              ? 16
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
