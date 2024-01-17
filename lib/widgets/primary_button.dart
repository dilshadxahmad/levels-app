import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? child;
  final String? text;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? overlayColor;
  const PrimaryButton({
    required this.onPressed,
    this.child,
    this.text,
    this.width,
    this.height,
    this.backgroundColor,
    this.overlayColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 302.w,
      height: height ?? 59.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
          overlayColor: MaterialStatePropertyAll(overlayColor),
        ),
        child: child ??
            Text(
              text ?? '',
              style: Theme.of(context).textTheme.labelMedium,
            ),
      ),
    );
  }
}
