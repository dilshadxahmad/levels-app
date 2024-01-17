import 'package:flutter/material.dart';

class DecoratedBodyContainer extends StatelessWidget {
  final String backgroundImagePath;
  final Widget child;
  const DecoratedBodyContainer({
    required this.backgroundImagePath,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            backgroundImagePath,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(child: child),
    );
  }
}
