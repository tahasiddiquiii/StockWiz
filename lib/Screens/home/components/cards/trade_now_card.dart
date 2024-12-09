import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/custom_long_button.dart';
import '../../../../constants/colors/colors.dart';
import '../../../../constants/styling/app_style.dart';
import '../grid_square_widget.dart';
import 'rounded_container_widget.dart';

class TradeNowCard extends StatelessWidget {
  const TradeNowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Container(
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
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
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
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "By: StockWiz Tech.",
                                      style:
                                          AppStyling.headingStyleWhiteF14W600(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: AppColors.white
                                                  .withOpacity(0.5)),
                                    ),
                                    SvgPicture.asset(
                                        "assets/svg/icons/tick.svg")
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "₹681.10",
                              style: AppStyling.headingStyleWhiteF14W600(),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                    "assets/svg/icons/upArrow.svg"),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "+14.45 (+2.17%)",
                                  style: AppStyling.textStyleBlackF12W500(
                                      color: AppColors.appGreen),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0)
                          .copyWith(right: 5),
                      child: SvgPicture.asset(
                        "assets/svg/icons/timeline.svg",
                        width: MediaQuery.of(context).size.width - 40,
                        height: 55,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const GridSquareWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomLongButton(
                        name: "Trade Now",
                        ontap: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 20,
          child: RoundedGradientContainer(
            gradient: LinearGradient(
                colors: AppColors.gradientList[6],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            text: "Swing",
            textColor: AppColors.white,
          ),
        ),
        Positioned(
          right: 20,
          child: RoundedGradientContainer(
            gradient: LinearGradient(
                colors: AppColors.gradientList[7],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
            text: "Equity",
            textColor: AppColors.black,
          ),
        ),
      ],
    );
  }
}
