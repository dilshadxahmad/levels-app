import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:levels_app/routes/app_keys.dart';
import 'package:levels_app/routes/app_routes.dart';
import 'package:levels_app/routes/route_generator.dart';
import 'package:levels_app/theme/theme_config.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, widget) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeConfig.lightTheme(),
          initialRoute: AppRoutes.initialRoute,
          navigatorKey: AppKeys.navigationKey,
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}
