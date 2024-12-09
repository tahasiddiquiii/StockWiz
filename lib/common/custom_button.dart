import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors/colors.dart';
import '../constants/styling/app_style.dart';

class SimpleButton extends StatelessWidget {
  final Widget? child;
  final Widget? preWidget;
  final TextStyle? style;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback onPressed;
  final double borderRadius;
  final bool? showBorder;
  final EdgeInsetsGeometry? padding;
  final String? title;
  final Icon? preIcon;
  final Icon? icon;
  final Color? bgColor;
  final double? height;
  final double? elevation;
  final BorderSide? borderside;

  const SimpleButton({
    super.key,
    this.child,
    required this.onPressed,
    this.borderRadius = 10,
    this.padding,
    this.style,
    this.textColor,
    this.fontSize,
    this.title,
    this.icon,
    this.bgColor,
    this.showBorder,
    this.fontWeight,
    this.preIcon,
    this.height,
    this.preWidget,
    this.elevation,
    this.borderside,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: padding,
          elevation: elevation,
          backgroundColor: bgColor ?? AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: showBorder == true
                ? borderside ??
                    BorderSide(color: AppColors.grey.withOpacity(0.2), width: 3)
                : BorderSide.none,
          ),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (preIcon != null) preIcon!,
              if (preIcon != null && title != null) SizedBox(width: 7.w),
              if (preWidget != null) preWidget!,
              if (preWidget != null && title != null) SizedBox(width: 5.w),
              if (title != null)
                Text(title.toString(),
                    style: style ??
                        AppStyling.headingStyleWhiteF14W600(
                            fontSize: fontSize ?? 16,
                            fontWeight: fontWeight ?? FontWeight.w600,
                            color: textColor)),
              if (icon != null && title != null) const SizedBox(width: 10),
              if (icon != null) icon!
            ],
          ),
        ),
      ),
    );
  }
}
