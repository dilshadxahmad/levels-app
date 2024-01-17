import 'package:flutter/material.dart';
import 'package:levels_app/routes/app_keys.dart';
import 'package:levels_app/routes/app_routes.dart';
import 'package:levels_app/routes/screen_argument.dart';

class AppNavigation {
  static final GlobalKey<NavigatorState> navigationKey = AppKeys.navigationKey;

  static Future<dynamic> navigateTo({String? routeName, Object? arguments}) =>
      navigationKey.currentState!.pushNamed(
        routeName!,
        arguments: arguments ?? const ScreenArgument(),
      );

  static Future<dynamic> pushReplacementTo(fingerprintRegistrationRoute,
          {String? routeName, Object? arguments}) =>
      navigationKey.currentState!
          .pushReplacementNamed(routeName!, arguments: arguments);

  static Future<dynamic> popAndPush({String? routeName, Object? arguments}) =>
      navigationKey.currentState!
          .popAndPushNamed(routeName!, arguments: arguments);

  static Future<dynamic> pushAndKillAll(
      {String? routeName, RoutePredicate? predicate, Object? arguments}) {
    return navigationKey.currentState!.pushNamedAndRemoveUntil(
      routeName!,
      predicate ??
          ModalRoute.withName(
            AppRoutes.initialRoute,
          ),
      arguments: arguments,
    );
  }

  static void popUntil({required String routeName}) =>
      navigationKey.currentState!.popUntil(ModalRoute.withName(routeName));

  static void goBack() => navigationKey.currentState!.pop();

  static bool canPop(BuildContext context) =>
      navigationKey.currentState!.canPop();

  static BuildContext get currentContext => navigationKey.currentState!.context;

  static void removeAllRoutes() =>
      navigationKey.currentState!.popUntil((route) => route.isFirst);
}
