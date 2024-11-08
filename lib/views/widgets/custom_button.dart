import 'package:dash_board_app/core/constants/app_colors.dart';
import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.backgourndColor,
      this.textColor,
      required this.textButton});

  final Color? backgourndColor, textColor;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgourndColor ?? AppColorLight.primaryColor,
        ),
        onPressed: () {},
        child: Text(
          textButton,
          style: AppStyles.styleBold16(context)
              .copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
