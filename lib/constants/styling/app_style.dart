import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/colors.dart';

class AppStyling {
  AppStyling();

// Heading Style
  static TextStyle headingStyleWhiteF14W600(
      {FontStyle? fontStyle,
      double? fontSize,
      double? height,
      Color? color,
      FontWeight? fontWeight}) {
    return TextStyle(
      height: height,
      fontSize: fontSize ?? 14,
      color: color ?? AppColors.white,
      fontWeight: fontWeight ?? FontWeight.w600,
    );
  }

// Heading Style
  static TextStyle headingStyleBlackF20W600(
      {FontStyle? fontStyle,
      double? fontSize,
      Color? color,
      FontWeight? fontWeight}) {
    return TextStyle(
      fontSize: fontSize ?? 20.sp,
      color: color ?? AppColors.black,
      fontWeight: fontWeight ?? FontWeight.w600,
    );
  }

// Heading Style
  static TextStyle textStyleBlackF12W500(
      {FontStyle? fontStyle,
      double? fontSize,
      double? height,
      Color? color,
      FontWeight? fontWeight}) {
    return TextStyle(
      height: height,
      fontSize: fontSize ?? 12.sp,
      color: color ?? AppColors.black,
      fontWeight: fontWeight ?? FontWeight.w500,
    );
  }

  static BoxDecoration commonContainerDecoration({
    double? radius,
    bool showShadows = true,
    Color color = Colors.white,
    Color? borderColor,
    double? borderWidth,
  }) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius ?? 20),
      border: Border.all(
        width: borderWidth ?? 0.1,
        color: borderColor ?? AppColors.grey,
      ),
      boxShadow: showShadows
          ? [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, 0.5),
              ),
            ]
          : null,
    );
  }
}
