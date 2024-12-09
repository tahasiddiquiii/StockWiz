import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedGradientContainer extends StatelessWidget {
  final String text;
  final Color textColor;
  final Gradient gradient;

  const RoundedGradientContainer({
    super.key,
    required this.text,
    required this.textColor,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.w,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(25), // Rounded corners
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
