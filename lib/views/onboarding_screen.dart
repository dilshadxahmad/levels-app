import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:levels_app/components/decorated_body_container.dart';
import 'package:levels_app/routes/app_navigation.dart';
import 'package:levels_app/routes/app_routes.dart';
import 'package:levels_app/utils/app_constants.dart';
import 'package:levels_app/utils/image_assets.dart';
import 'package:levels_app/widgets/primary_button.dart';
import 'package:levels_app/widgets/secondary_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBodyContainer(
        backgroundImagePath:
            AppConstants.assetImagesBasePath + ImageAssets.screenBg1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppConstants.assetImagesBasePath + ImageAssets.appLogo),
            Gap(50.h),
            PrimaryButton(
              onPressed: () => AppNavigation.navigateTo(
                  routeName: AppRoutes.registrationScreen),
              text: 'SIGN UP',
            ),
            Gap(14.h),
            SecondaryButton(
              onPressed: () {},
              text: 'LOGIN',
            ),
          ],
        ),
      ),
    );
  }
}
