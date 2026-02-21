import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:happyfinance_mobile/business_logic/auth/auth_account/auth_account_bloc.dart';
import 'package:happyfinance_mobile/business_logic/auth/auth_bloc.dart';
import 'package:happyfinance_mobile/business_logic/core/core_cubit.dart';
import 'package:happyfinance_mobile/injector.dart';
import 'package:happyfinance_mobile/presentation/onboarding/onboarding_screen.dart';
import 'package:happyfinance_mobile/presentation/routers/route_path.dart';
import 'package:happyfinance_mobile/presentation/routers/router_refresh_stream.dart';
import 'package:happyfinance_mobile/presentation/screens/auth/login_screen.dart';
import 'package:happyfinance_mobile/presentation/screens/auth/register_screen.dart';
import 'package:happyfinance_mobile/presentation/screens/home/home_screen.dart';

// final parentNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: RoutePath.rootPath,
  // navigatorKey: parentNavigatorKey,
  refreshListenable: RouterRefreshStream([
    sl<CoreCubit>().stream,
    sl<AuthAccountBloc>().stream,
  ]),
  redirect: (context, state) {
    final isAuthenticated = sl<AuthAccountBloc>().state.when(
      authenticated: (a) => true,
      unauthenticated: () => false,
    );

    final isOnBoarded = sl<CoreCubit>().state.isBoarding;
    final location = state.matchedLocation;

    // Belum onboarding → arahkan ke onboarding
    if (!isOnBoarded) {
      return location == RoutePath.onBoardingPath
          ? null
          : RoutePath.onBoardingPath;
    }

    // Sudah onboarding, belum login → arahkan ke login
    // Izinkan akses ke /register juga
    if (!isAuthenticated) {
      final isAuthRoute =
          location == RoutePath.loginPath || location == RoutePath.registerPath;
      return isAuthRoute ? null : RoutePath.loginPath;
    }

    // Sudah login, jangan biarkan akses ke onboarding / login / root
    final isProtectedRoute =
        location == RoutePath.onBoardingPath ||
        location == RoutePath.loginPath ||
        location == RoutePath.registerPath ||
        location == RoutePath.rootPath;
    if (isProtectedRoute) {
      return RoutePath.homePath;
    }

    return null;
  },
  errorBuilder: (context, state) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Tidak Ditemukan')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Halaman yang Anda cari tidak tersedia'),
            ElevatedButton(
              onPressed: () => context.go(RoutePath.homePath),
              child: const Text('Kembali ke Home'),
            ),
          ],
        ),
      ),
    );
  },
  routes: [
    // Onboarding Page
    GoRoute(
      path: RoutePath.onBoardingPath,
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: RoutePath.loginPath,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: RoutePath.registerPath,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: RoutePath.homePath,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
