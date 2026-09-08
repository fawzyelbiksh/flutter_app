import 'package:flutter/material.dart';
import 'package:flutterApp/core/routing/routes.dart';
import 'package:flutterApp/features/login/onboarding_screen.dart/onboarding_screen.dart';
import 'package:flutterApp/features/login/ui/login_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('No route defined for this path')),
          ),
        );
    }
  }
}
