import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/colors/colors.dart';
import '../../../constants/styling/app_style.dart';

class HeadingRowWidget extends StatelessWidget {
  final String icon;
  final String title;
  final bool showSebi;
  final bool showViewMore;
  final bool showCaution;

  const HeadingRowWidget(
      {super.key,
      required this.icon,
      required this.title,
      this.showSebi = false,
      this.showViewMore = false,
      this.showCaution = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(icon),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  title,
                  style: AppStyling.headingStyleBlackF20W600(
                      color: AppColors.white, fontSize: 18),
                ),
              ),
              if (showSebi) Image.asset('assets/images/sebi.png'),
              if (showSebi)
                const SizedBox(
                  width: 4,
                ),
              if (showCaution)
                SvgPicture.asset('assets/svg/icons/dangerCircle.svg'),
            ],
          ),
          if (showViewMore)
            Text(
              "View all",
              style: AppStyling.textStyleBlackF12W500(
                color: AppColors.white,
              ),
            ),
        ],
      ),
    );
  }
}
