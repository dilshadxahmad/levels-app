import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:levels_app/utils/app_colors.dart';
import 'package:levels_app/utils/app_fonts.dart';

class ThemeConfig {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      canvasColor: Colors.transparent,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
      scaffoldBackgroundColor: AppColors.black,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
      fontFamily: AppFonts.montserrat,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: AppColors.white,
      ),

      appBarTheme: AppBarTheme(
        toolbarHeight: 150.h,
        iconTheme: IconThemeData(
          size: 24.sp,
          fill: 0,
          color: AppColors.primaryRedColor,
        ),
        actionsIconTheme: const IconThemeData(
          color: AppColors.primaryRedColor,
          fill: 0.5,
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          color: AppColors.primaryRedColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.primaryRedColor.withOpacity(0);
              }
              return AppColors.primaryRedColor;
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return AppColors.primaryRedColor.withOpacity(0.25);
              }
              return AppColors.white;
            },
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(14.r),
              ),
            ),
          ),
          overlayColor:
              MaterialStatePropertyAll(AppColors.white.withOpacity(0.1)),
          shadowColor: MaterialStatePropertyAll(
              AppColors.primaryRedColor.withOpacity(0.1)),
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
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor:
              const MaterialStatePropertyAll(AppColors.primaryRedColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(14.r),
              ),
            ),
          ),
          side: const MaterialStatePropertyAll(
            BorderSide(color: AppColors.primaryRedColor),
          ),
          overlayColor: MaterialStatePropertyAll(
              AppColors.primaryRedColor.withOpacity(0.1)),
          elevation: const MaterialStatePropertyAll(0),
        ),
      ),

      /////////////////////////////////////////////////

      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          foregroundColor:
              const MaterialStatePropertyAll(AppColors.primaryRedColor),
          shape: const MaterialStatePropertyAll(StadiumBorder()),
          overlayColor:
              MaterialStatePropertyAll(AppColors.white.withOpacity(0.1)),
        ),
      ),

      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconSize: const MaterialStatePropertyAll(24),
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          foregroundColor:
              const MaterialStatePropertyAll(AppColors.primaryRedColor),
          overlayColor: MaterialStatePropertyAll(
              AppColors.primaryRedColor.withOpacity(0.1)),
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
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColors.primaryRedColor,
        linearTrackColor: AppColors.primaryRedColor.withOpacity(0.25),
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
        indicatorColor: AppColors.primaryRedColor,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: AppColors.primaryRedColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        labelColor: AppColors.white,
        unselectedLabelColor: AppColors.primaryRedColor,
        dividerColor: Colors.transparent,
        labelPadding: EdgeInsets.all(8.h),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.primaryRedColor,
        surfaceTintColor: Colors.transparent,
        width: 348.w,
        shape: const LinearBorder(),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.primaryRedColor.withOpacity(0.3),
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
        fillColor: AppColors.lightGrey,
        labelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14.sp,
          color: AppColors.grey,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(14.r),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(14.r),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(14.r),
          ),
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14.sp,
          color: AppColors.grey,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.primaryRedColor,
        selectionHandleColor: AppColors.primaryRedColor,
        selectionColor: AppColors.primaryRedColor.withOpacity(0.1),
      ),
      textTheme: TextTheme(
        labelMedium: TextStyle(
          color: AppColors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),

        bodyLarge: TextStyle(
          color: AppColors.black,
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
        ),
        bodyMedium: TextStyle(
          color: AppColors.black,
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
        ),

        ////////////////////////////////////////////////

        // Display Styles
        displayLarge: TextStyle(
          color: AppColors.primaryRedColor,
          fontSize: 44.sp,
          fontWeight: FontWeight.normal,
        ),

        headlineMedium: TextStyle(
          fontFamily: AppFonts.montserrat,
          color: AppColors.white,
          fontSize: 14.sp,
        ),

        displayMedium: TextStyle(
          color: AppColors.primaryRedColor,
          fontSize: 32.sp,
        ),
        displaySmall: TextStyle(
          color: AppColors.primaryRedColor,
          fontSize: 20.sp,
        ),

        // Label Styles
        labelLarge: TextStyle(
          color: AppColors.primaryRedColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: AppColors.primaryRedColor,
          fontSize: 14.sp,
          fontFamily: AppFonts.montserrat,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w700,
        ),

        bodySmall: TextStyle(
          color: AppColors.primaryRedColor,
          fontSize: 14.sp,
          fontFamily: AppFonts.montserrat,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1,
        ),

        // Headline Styles

        headlineSmall: TextStyle(
          color: AppColors.primaryRedColor,
          fontSize: 12.sp,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark();
  }
}
