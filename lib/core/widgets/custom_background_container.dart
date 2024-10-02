import 'package:dash_board_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key, required this.child, this.padding,
  });
  final Widget child;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all( padding ?? 20),
      decoration: const BoxDecoration(
          color: AppColorLight.customBackgroundContainerColor,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: child
    );
  }
}