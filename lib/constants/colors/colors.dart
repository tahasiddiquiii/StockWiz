import 'package:flutter/material.dart';

class AppColors {
// red
  static Color redMain = const Color(0xFFFF5252);
  static Color transparent = Colors.transparent;

//  grey
  static Color white = const Color(0xFFFFFFFF);
  static Color grey = const Color(0xFF0C110E);
  static Color greenishBlack = const Color(0xFF0C110E);

  // yellow
  static Color yellow = const Color(0xFFFFCD1E);

  //Green
  static Color appGreen = const Color(0xFF26BC0D);

  static Color greyText = const Color(0xFFB5B5B5);
  static Color greycol = const Color(0xFFC2C2C2);
  static Color subHeadingGrey = const Color(0xFF939393);
  static Color lightGrey = const Color(0xFFE3E3E3);
  static Color displyText = const Color(0xFFC9C9C9);
  static Color dividerGrey = const Color(0xFFE3E3E3);

//  black
  static Color blackColor = const Color(0xFF252525);
  static Color black = const Color(0xFF454545);
  static Color appBlack = const Color(0xFF0C110E);
  // static Color blackText = Colors.black;
  static Color blackText = const Color(0xFF454545);
  static Color borderBlackColor = const Color(0xFF0C110E);

// blue
  static Color blue = const Color(0xFF1791FD);
  static Color megBlue = const Color(0xFF0869F9);
  static Color darkblue = const Color(0xFF0078CF);

// Green
  static Color checkGreen = const Color(0xFF14A423);
  static Color completeGreen = const Color(0xFF75BF06);
  static Color greenText = const Color(0xFF499F4E);

// yellow
  static Color inprogressYellow = const Color(0xFFFBB516);

//red
  static Color ringRed = const Color(0xFF8C0028);
  static Color pendingRed = const Color(0xFFFE0000);

  static const Color customBlack = Color(0xff191919);
  static const Color customRed = Color(0xffDD2425);
  static const Color customGrey = Color(0xff616161);
  static const Color customBlue = Color(0xFF000B3E);
  static const Color customBgGrey = Color(0xff979797);
  static const Color bgGrey = Color(0xffF4F4F4);
  static const Color backgroundGrey = Color(0xffFBFBFB);

  static const Color lightTabGrey = Color(0xffF1F1F1);
  static const Color textTabGrey = Color(0xff616161);
  static const Color lightRed = Color(0xffF7CFCF);
  static const Color successGreen = Color(0xff6DCF65);
  static const Color acceptGreen = Color(0xff6ED7AD);
  static const Color textGreen = Color(0xff227F4D);
  static const Color missedYelllow = Color(0xffFAA96A);
  static const Color dividerColor = Color(0xff979797);
  static const Color lightDividerColor = Color(0xffD8D8D8);
  static const Color headingGreyColor = Color(0xff999999);
  static const Color greyColor = Color(0xff6E6E6E);
  static const Color address2greyColor = Color(0xff585858);
  static const Color timegreyColor = Color(0xff444444);
  static const Color extraLightGrey = Color(0xffD0D0D0);
  static const Color graphGreen = Color(0xff3FB174);
  static const Color lineLightGrey = Color(0xffEFEFEF);
  static const Color reviewColor = Color(0xff60C2E0);
  static const Color lineGrey = Color(0xffDDDDDD);
  static const Color greyCl = Color(0xff939393);
  static const Color greyTextCl = Color(0xff5C5C5C);
  static const Color greyTextbg = Color(0xffD9D9D9);
  static const Color greyNew = Color(0xffCACACA);
  static Color greenGrey = const Color(0xFFE8F3EF);

  static const Color gradGreen1 = Color(0xff29E337);
  static const Color gradGreen2 = Color(0xff76FF80);

  static const Color gradYellow1 = Color(0xffFFCB59);
  static const Color gradYellow2 = Color(0xffEBA200);

  static final List<List<Color>> gradientList = [
    [Colors.transparent, Colors.white, Colors.transparent],
    [AppColors.gradGreen1, AppColors.gradGreen1],
    [AppColors.white, AppColors.white],
    [const Color(0xFFEBA200), const Color(0xFFFFCB59)],
    [Colors.transparent, const Color(0xFFEBA200), Colors.transparent],
    [const Color(0xFF26BC0D).withOpacity(0.31), Colors.transparent],
    [const Color(0xFFFB0871), const Color(0xFFFF72AF)],
    [const Color(0xFF29D8E3), const Color(0xFF43F4FF), const Color(0xFF32B5FF)],
    [AppColors.gradYellow1, AppColors.gradYellow2],
    [Colors.transparent, const Color(0xFF26BC0D), Colors.transparent],
    [Colors.white.withOpacity(0.1), Colors.white.withOpacity(0.2)]
  ];
}
