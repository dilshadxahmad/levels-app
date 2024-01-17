import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:levels_app/components/decorated_body_container.dart';
import 'package:levels_app/utils/app_colors.dart';
import 'package:levels_app/utils/app_constants.dart';
import 'package:levels_app/utils/image_assets.dart';
import 'package:levels_app/widgets/custom_app_bar.dart';
import 'package:levels_app/widgets/custom_text_field.dart';
import 'package:levels_app/widgets/primary_button.dart';
import 'package:levels_app/widgets/secondary_button.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      endDrawer: const Drawer(),
      extendBodyBehindAppBar: true,
      body: DecoratedBodyContainer(
        backgroundImagePath:
            AppConstants.assetImagesBasePath + ImageAssets.screenBg2,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(24.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32.r),
                topRight: Radius.circular(32.r),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Are you an',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Gap(8.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PrimaryButton(
                      onPressed: () {},
                      width: 145.w,
                      text: 'Athlete',
                    ),
                    SecondaryButton(
                      onPressed: () {},
                      width: 145.w,
                      text: 'Coach',
                      textStyle: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: AppColors.black),
                    ),
                  ],
                ),
                Gap(16.h),
                Text(
                  'Fill out the details below:',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Gap(8.h),
                const CustomTextField(
                  hintText: 'Name',
                ),
                Gap(8.h),
                const CustomTextField(
                  hintText: 'Phone',
                ),
                Gap(8.h),
                const CustomTextField(
                  hintText: 'Email Address',
                ),
                Gap(8.h),
                const CustomTextField(
                  hintText: 'Birthday',
                ),
                Gap(8.h),
                const CustomTextField(
                  hintText: 'Password',
                ),
                Gap(8.h),
                const CustomTextField(
                  hintText: 'Confirm Password',
                ),
                Gap(16.h),
                PrimaryButton(
                  onPressed: () {},
                  width: double.maxFinite,
                  text: 'SUBMIT',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
