// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors/colors.dart';
import '../../../constants/styling/app_style.dart';

// ignore: must_be_immutable
class CustomLongButton extends StatelessWidget {
  final void Function()? ontap;
  final String name;
  bool? isLoading;
  TextStyle? style;
  Color? buttonColor;

  CustomLongButton({
    super.key,
    required this.ontap,
    required this.name,
    this.isLoading = false,
    this.buttonColor,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        onPressed: ontap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              buttonColor ?? AppColors.appGreen),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            // ignore: prefer_const_constructors

            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 14.0),
          ),
          shape: (isLoading != null && isLoading == true)
              ? MaterialStateProperty.all(const CircleBorder())
              : MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
        ),
        child: (isLoading != null && isLoading == true)
            ? const SizedBox(
                // height: 35,
                // width: 70,
                child: Center(child: CircularProgressIndicator()))
            : FittedBox(
                child: Text(
                  name,
                  style: style ??
                      AppStyling.headingStyleWhiteF14W600(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
      ),
    );
  }
}
