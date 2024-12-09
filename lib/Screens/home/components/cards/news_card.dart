import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_wiz/common/custom_button.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/styling/app_style.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.appBlack,
          border: Border.all(
            color: AppColors.white.withOpacity(0.3),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/jbma.png"),
                      const SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "JBMA",
                            style: AppStyling.headingStyleWhiteF14W600(),
                          ),
                          Text(
                            "JBM AUTO Co.",
                            style: AppStyling.headingStyleWhiteF14W600(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white.withOpacity(0.5)),
                          ),
                          Text(
                            "09 July 2024 | 02:43 PM",
                            style: AppStyling.headingStyleWhiteF14W600(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.white.withOpacity(0.7)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "₹2,764.64",
                        style: AppStyling.headingStyleWhiteF14W600(),
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            "assets/svg/icons/upArrow.svg",
                            width: 8,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "+25.25 (10.5%)",
                            style: AppStyling.textStyleBlackF12W500(
                                color: AppColors.appGreen, fontSize: 8),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "JBM Auto shares are trading higher after Zee Business reported that the Indian Army will procure 113 zero- emission electric buses.",
                style: AppStyling.headingStyleWhiteF14W600(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/svg/icons/pencil.svg"),
                      Text(
                        'Ai Research',
                        style: AppStyling.headingStyleWhiteF14W600(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SimpleButton(
                    onPressed: () {},
                    bgColor: Colors.black,
                    title: "Trade Now",
                    style: AppStyling.headingStyleWhiteF14W600(),
                    showBorder: true,
                    borderside: BorderSide(
                      color: AppColors.appGreen,
                      width: 1,
                    ),
                    borderRadius: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
