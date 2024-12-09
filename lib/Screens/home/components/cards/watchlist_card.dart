import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../stacked_images.dart';

class WatchlistCard extends StatelessWidget {
  const WatchlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/svg/icons/watchlistBg.svg"),
        Positioned(
          top: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Intraday',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Trade Duration: 1 Day',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  StackedImages(),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 20,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset("assets/svg/icons/plugGreen.svg"),
              SvgPicture.asset("assets/svg/icons/plugGrey.svg"),
            ],
          ),
        )
      ],
    );
  }
}
