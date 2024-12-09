import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_wiz/common/custom_button.dart';

import '../../../../constants/colors/colors.dart';
import '../../../../constants/styling/app_style.dart';

class GraphCard extends StatelessWidget {
  const GraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: AppColors.gradientList[5]),
            border: Border.all(
              color: AppColors.appGreen.withOpacity(0.3),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("assets/images/currency.png"),
                          const SizedBox(
                            width: 4,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Reliance",
                                    style:
                                        AppStyling.headingStyleWhiteF14W600(),
                                  ),
                                  Image.asset("assets/images/nse.png"),
                                ],
                              ),
                              Text(
                                "Reliance Industry",
                                style: AppStyling.headingStyleWhiteF14W600(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white.withOpacity(0.5)),
                              ),
                              const SizedBox(
                                height: 3,
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
                              SvgPicture.asset("assets/svg/icons/upArrow.svg"),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "+25.25 (10.5%)",
                                style: AppStyling.textStyleBlackF12W500(
                                    color: AppColors.appGreen),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.appBlack,
                      border: Border.all(
                        color: AppColors.white.withOpacity(0.15),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Return Since Added',
                              style: AppStyling.headingStyleWhiteF14W600(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '+14.3%',
                              style: AppStyling.headingStyleWhiteF14W600(
                                color: AppColors.appGreen,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Potential Move',
                              style: AppStyling.headingStyleWhiteF14W600(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '+34.3%',
                              style: AppStyling.headingStyleWhiteF14W600(
                                color: AppColors.appGreen,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Added On:",
                      style: AppStyling.headingStyleWhiteF14W600(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: AppColors.white.withOpacity(0.5)),
                    ),
                    Text(
                      " 9th Aug 2024",
                      style: AppStyling.headingStyleWhiteF14W600(
                          fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        height: 10,
                        width: 1,
                        color: AppColors.white.withOpacity(0.1),
                      ),
                    ),
                    Text(
                      "09:34 PM",
                      style: AppStyling.headingStyleWhiteF14W600(
                          fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Divider(
                  color: AppColors.white.withOpacity(0.15),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/svg/icons/graph.svg"),
                      SimpleButton(
                        onPressed: () {},
                        bgColor: Colors.black,
                        title: "View Chart",
                        style: AppStyling.headingStyleWhiteF14W600(
                          fontSize: 12,
                        ),
                        showBorder: true,
                        borderside: BorderSide(
                            color: AppColors.white.withOpacity(0.2), width: 1),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 20,
          right: 20,
          child: Container(
            height: 2,
            width: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors.gradientList[9],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 20,
          right: 20,
          child: Container(
            height: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors.gradientList[9],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
