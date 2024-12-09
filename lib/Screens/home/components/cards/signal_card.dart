import 'package:flutter/material.dart';
import 'package:stock_wiz/constants/colors/colors.dart';

import '../stacked_images.dart';

class IntradayCard extends StatelessWidget {
  final Color? borderColor;
  final bool showCutContainer;

  const IntradayCard({
    super.key,
    this.borderColor,
    required this.showCutContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: borderColor ?? AppColors.gradYellow1,
          width: 2.0,
        ),
      ),
      child: SizedBox(
        width: 260,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0).copyWith(bottom: 0),
                  child: const Text(
                    'Intraday',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                if (showCutContainer)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: AppColors.gradientList[8],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                    ),
                    child: const Text(
                      '2 New Ideas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10.0, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StackedImages(),
                      SizedBox(height: 10),
                      Text(
                        'Avg. Return: 12.32%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Avg. Duration: 3 Days ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/timer.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
