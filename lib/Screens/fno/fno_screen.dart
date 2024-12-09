import 'package:flutter/material.dart';
import 'package:stock_wiz/constants/colors/colors.dart';
import 'package:stock_wiz/constants/styling/app_style.dart';

class FnoScreen extends StatelessWidget {
  const FnoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        "FNO SCREEN",
        style: AppStyling.headingStyleBlackF20W600(color: AppColors.white),
      )),
    );
  }
}
