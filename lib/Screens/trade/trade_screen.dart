import 'package:flutter/material.dart';

import '../../constants/colors/colors.dart';
import '../../constants/styling/app_style.dart';

class TradeScreen extends StatelessWidget {
  const TradeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Text(
        "TRADE SCREEN",
        style: AppStyling.headingStyleBlackF20W600(color: AppColors.white),
      )),
    );
  }
}
