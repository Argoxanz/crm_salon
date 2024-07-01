import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:na_beauty_crm/const.dart';
import 'package:na_beauty_crm/screens/login/login_screen.dart';
import 'package:na_beauty_crm/screens/register/add_number_screen.dart';
import 'package:na_beauty_crm/screens/register/choice_screen.dart';
import 'package:na_beauty_crm/screens/register/enter_verification_screen.dart';
import 'package:na_beauty_crm/screens/register/licence_screen.dart';
import 'package:na_beauty_crm/screens/register/register_screen.dart';
import 'package:na_beauty_crm/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/rl',
      builder: (BuildContext context, GoRouterState state) {
        return const ChoiceScreen();
      },
    ),
    GoRoute(
      path: '/licence',
      builder: (BuildContext context, GoRouterState state) {
        return const LicenceScreen();
      },
    ),
    GoRoute(
      path: '/rl/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: '/rl/register',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterScreen();
      },
    ),
    GoRoute(
      path: '/rl/register/number',
      builder: (BuildContext context, GoRouterState state) {
        return const AddNumber();
      },
    ),
    GoRoute(
      path: '/rl/register/number/confirm',
      builder: (BuildContext context, GoRouterState state) {
        return const Verification();
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primaryGreen,
        ),
        // textTheme: TextTheme(bodyLarge: )
      ),
      routerConfig: _router,
    );
  }
}
