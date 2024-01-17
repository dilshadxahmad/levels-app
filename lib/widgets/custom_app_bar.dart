import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:levels_app/utils/app_constants.dart';
import 'package:levels_app/utils/image_assets.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({super.centerTitle, super.key})
      : super(
          title: Image.asset(
            AppConstants.assetImagesBasePath + ImageAssets.appLogo,
            height: 139.h,
          ),
          automaticallyImplyLeading: false,
        );
}
