import 'package:flutter/material.dart';
import 'package:levels_app/routes/app_routes.dart';
import 'package:levels_app/views/onboarding_screen.dart';
import 'package:levels_app/views/registration_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.initialRoute:
        return routeScreen(child: const OnboardingScreen());
      case AppRoutes.registrationScreen:
        return routeScreen(child: const RegistrationScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Text('Error Page');
    });
  }

  static Route<dynamic> routeScreen({
    Widget? child,
  }) {
    return MaterialPageRoute(
      // builder: (context) => child!,
      builder: (context) => SafeArea(
        child: child!,
      ),
    );
  }
}
