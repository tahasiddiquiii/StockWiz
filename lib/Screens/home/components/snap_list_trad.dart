import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cards/trade_now_card.dart';

class SnapListTrad extends StatefulWidget {
  const SnapListTrad({super.key});

  @override
  State<SnapListTrad> createState() => _SnapListTradState();
}

class _SnapListTradState extends State<SnapListTrad> {
  final PageController _pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 390.h,
        width: MediaQuery.of(context).size.width - 10,
        child: PageView.builder(
          controller: _pageController,
          itemCount: 6,
          onPageChanged: (int index) {
            setState(() {});
            // l
          },
          itemBuilder: (BuildContext context, int index) {
            double scale = 1.0;
            if (_pageController.position.haveDimensions) {
              double page = index - _pageController.page!;
              scale = 1 - (page.abs() * 0.1);
              scale = scale.clamp(0.85, 1.0);
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ClipRect(
                child: Align(
                  alignment: Alignment.center,
                  child: AnimatedBuilder(
                    animation: _pageController,
                    builder: (context, child) {
                      double scaleFactor = 1.0;
                      if (_pageController.position.haveDimensions) {
                        double page = index - _pageController.page!;
                        scaleFactor = 1 - (page.abs() * 0.1);
                        scaleFactor = scaleFactor.clamp(0.85, 1.0);
                      }
                      return Transform.scale(
                        scale: scaleFactor,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: const TradeNowCard(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
