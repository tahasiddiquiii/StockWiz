import 'package:flutter/material.dart';

import '../../constants/colors/colors.dart';
import '../../constants/styling/app_style.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        "MARKET SCREEN",
        style: AppStyling.headingStyleBlackF20W600(color: AppColors.white),
      )),
    );
  }
}
