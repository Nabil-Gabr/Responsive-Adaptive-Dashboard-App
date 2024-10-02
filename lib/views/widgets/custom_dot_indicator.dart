import 'package:dash_board_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: active ? 32 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: active ? AppColorLight.primaryColor : const Color(0xffE8E8E8),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
    );
  }
}
