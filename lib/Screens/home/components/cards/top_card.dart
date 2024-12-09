import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_wiz/constants/styling/app_style.dart';

import '../../../../constants/colors/colors.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.greenishBlack,
          border: Border.all(
            color: AppColors.white.withOpacity(0.3),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/dhan.png",
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/svg/icons/eye.svg',
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      SvgPicture.asset(
                        'assets/svg/icons/refresh.svg',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Margin Available ',
                        style: AppStyling.textStyleBlackF12W500(
                            color: AppColors.white.withOpacity(0.5),
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        '₹20,00,764.64',
                        style: AppStyling.headingStyleWhiteF14W600(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Connected',
                        style: AppStyling.textStyleBlackF12W500(
                            color: AppColors.white.withOpacity(0.7),
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      SvgPicture.asset(
                        'assets/svg/icons/attach.svg',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
