import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:happyfinance_mobile/presentation/routers/route_path.dart';
import 'package:happyfinance_mobile/presentation/screens/auth/login_screen.dart';
import 'package:happyfinance_mobile/presentation/screens/auth/register_screen.dart';

// final parentNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  // initialLocation: RoutePath.rootPath,
  debugLogDiagnostics: true,
  // navigatorKey: parentNavigatorKey,
  // refreshListenable: RouterRefreshStream([
  //   sl<MultiScreenBloc>().stream,
  //   sl<AuthBloc>().stream,
  //   sl<TugaskuBloc>().stream,
  // ]),
  // redirect: (context, state) {},
  errorBuilder: (context, state) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Tidak Ditemukan')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Halaman yang Anda cari tidak tersedia'),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('Kembali ke Home'),
            ),
          ],
        ),
      ),
    );
  },
  routes: [
    // Onboarding Page
    // GoRoute(
    //   path: RoutePath.rootPath,
    //   builder: (context, state) => const LoginScreen(),
    // ),
    // GoRoute(
    //   path: RoutePath.loginPath,
    //   builder: (context, state) => const RegisterScreen(),
    // ),
    GoRoute(
      path: RoutePath.rootPath,
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
