import 'package:dash_board_app/core/constants/app_colors.dart';
import 'package:dash_board_app/core/utils/size_config.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      color: AppColorLight.bodyTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: AppColorLight.captionTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: AppColorLight.bodyTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: AppColorLight.seconderyTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: AppColorLight.bodyTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: AppColorLight.bodyTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: AppColorLight.primaryTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: AppColorLight.captionTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: AppColorLight.primaryTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: AppColorLight.seconderyTextColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}















// import 'package:flutter/material.dart';

// abstract class AppStyles {

//   static const TextStyle styleRegular12 = TextStyle(
//     color: Color(0xFFAAAAAA),
//     fontSize: 12,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//   );

//   static const TextStyle styleRegular14 = TextStyle(
//     color: Color(0xFFAAAAAA),
//     fontSize: 14,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//   );
  
//   static const TextStyle styleRegular16 = TextStyle(
//     color: Color(0xFF064060),
//     fontSize: 16,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w400,
//   );

//   static const TextStyle styleMedium16 = TextStyle(
//     color: Color(0xFF064061),
//     fontSize: 16,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w500,
//   );

//   static const TextStyle styleSemiBold16 = TextStyle(
//     color: Color(0xFF064061),
//     fontSize: 16,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );

//   static const TextStyle styleBold16 = TextStyle(
//     color: Color(0xFF4EB7F2),
//     fontSize: 16,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w700,
//   );

//   static const TextStyle styleMedium20 = TextStyle(
//     color: Color(0xFFFFFFFF),
//     fontSize: 20,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w500,
//   );

//   static const TextStyle styleSemiBold20 = TextStyle(
//     color: Color(0xFF064061),
//     fontSize: 20,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );

//   static const TextStyle styleSemiBold24 = TextStyle(
//     color: Color(0xFF4EB7F2),
//     fontSize: 24,
//     fontFamily: 'Montserrat',
//     fontWeight: FontWeight.w600,
//   );
// }
