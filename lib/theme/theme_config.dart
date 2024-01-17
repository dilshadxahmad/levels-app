import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:levels_app/utils/app_colors.dart';
import 'package:levels_app/utils/app_fonts.dart';

class ThemeConfig {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: AppColors.antiqueYellowColor,
      fontFamily: AppFonts.montserrat,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: AppColors.white,
      ),
      appBarTheme: AppBarTheme(
        toolbarHeight: 100.h,
        iconTheme: IconThemeData(
          size: 24.sp,
          fill: 0,
          color: AppColors.darkTunaColor,
        ),
        actionsIconTheme: const IconThemeData(
          color: AppColors.darkTunaColor,
          fill: 0.5,
        ),
        backgroundColor: AppColors.antiqueYellowColor,
        surfaceTintColor: Colors.transparent,
        // titleSpacing: 16.w,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          color: AppColors.darkTunaColor,
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColors.darkTunaColor,
        linearTrackColor: AppColors.darkTunaColor.withOpacity(0.25),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.darkTunaColor.withOpacity(0);
              }
              return AppColors.darkTunaColor;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.darkTunaColor.withOpacity(0.25);
              }
              return AppColors.white;
            },
          ),
          shape: const MaterialStatePropertyAll(StadiumBorder()),
          overlayColor:
              MaterialStatePropertyAll(AppColors.white.withOpacity(0.1)),
          shadowColor: MaterialStatePropertyAll(
              AppColors.darkTunaColor.withOpacity(0.1)),
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return 0;
              }
              return 8.sp;
            },
          ),
          surfaceTintColor: const MaterialStatePropertyAll(Colors.transparent),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          foregroundColor:
              const MaterialStatePropertyAll(AppColors.darkTunaColor),
          shape: const MaterialStatePropertyAll(StadiumBorder()),
          overlayColor:
              MaterialStatePropertyAll(AppColors.white.withOpacity(0.1)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor:
              const MaterialStatePropertyAll(AppColors.darkTunaColor),
          shape: const MaterialStatePropertyAll(StadiumBorder()),
          side: const MaterialStatePropertyAll(
            BorderSide(color: AppColors.darkTunaColor),
          ),
          overlayColor: MaterialStatePropertyAll(
              AppColors.darkTunaColor.withOpacity(0.1)),
          elevation: const MaterialStatePropertyAll(0),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconSize: const MaterialStatePropertyAll(24),
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          foregroundColor:
              const MaterialStatePropertyAll(AppColors.darkTunaColor),
          overlayColor: MaterialStatePropertyAll(
              AppColors.darkTunaColor.withOpacity(0.1)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.transparent,
                width: 0.8.h,
              ),
              borderRadius: BorderRadius.circular(13.r),
            ),
          ),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: AppColors.lightGrey,
        thickness: 0.5.h,
      ),
      cardTheme: CardTheme(
        color: AppColors.white,
        surfaceTintColor: Colors.transparent,
        shadowColor: AppColors.lightGrey.withOpacity(0.1),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.r),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        focusElevation: 0,
      ),
      tabBarTheme: TabBarTheme(
        indicatorColor: AppColors.darkTunaColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: AppColors.darkTunaColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        labelColor: AppColors.white,
        unselectedLabelColor: AppColors.darkTunaColor,
        dividerColor: Colors.transparent,
        labelPadding: EdgeInsets.all(8.h),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.darkTunaColor,
        surfaceTintColor: Colors.transparent,
        width: 348.w,
        shape: const LinearBorder(),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.darkTunaColor.withOpacity(0.3),
        contentTextStyle: const TextStyle(color: AppColors.white),
        behavior: SnackBarBehavior.floating,
        width: 176.w,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
        filled: true,
        fillColor: AppColors.lightGrey.withOpacity(0.25),
        labelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: AppColors.lightGrey,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: AppColors.lightGrey,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.darkTunaColor,
        selectionHandleColor: AppColors.darkTunaColor,
        selectionColor: AppColors.darkTunaColor.withOpacity(0.1),
      ),
      textTheme: TextTheme(
        // Display Styles
        displayLarge: TextStyle(
          color: AppColors.darkTunaColor,
          fontSize: 44.sp,
          fontWeight: FontWeight.normal,
        ),

        headlineMedium: TextStyle(
          fontFamily: AppFonts.montserrat,
          color: AppColors.white,
          fontSize: 14.sp,
        ),

        ////////////////////////////////////////////////
        displayMedium: TextStyle(
          color: AppColors.darkTunaColor,
          fontSize: 32.sp,
        ),
        displaySmall: TextStyle(
          color: AppColors.darkTunaColor,
          fontSize: 20.sp,
        ),

        // Label Styles
        labelLarge: TextStyle(
          color: AppColors.darkTunaColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: AppColors.darkTunaColor,
          fontSize: 14.sp,
          fontFamily: AppFonts.montserrat,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w700,
        ),

        // Body Styles
        bodyLarge: TextStyle(
          color: AppColors.darkTunaColor,
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          color: AppColors.darkTunaColor,
          fontSize: 16.sp,
        ),
        bodySmall: TextStyle(
          color: AppColors.darkTunaColor,
          fontSize: 14.sp,
          fontFamily: AppFonts.montserrat,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1,
        ),

        // Headline Styles

        headlineSmall: TextStyle(
          color: AppColors.darkTunaColor,
          fontSize: 12.sp,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark();
  }
}
