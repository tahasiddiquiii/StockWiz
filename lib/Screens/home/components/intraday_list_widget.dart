import 'package:flutter/material.dart';

import '../../../constants/colors/colors.dart';
import 'cards/signal_card.dart';

class IntradayCardList extends StatelessWidget {
  const IntradayCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        height: 170,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6, // Number of items in the list
          itemBuilder: (context, index) {
            return IntradayCard(
              borderColor: index == 0 ? AppColors.gradYellow1 : AppColors.white,
              showCutContainer: index == 0 ? true : false,
            );
          },
        ),
      ),
    );
  }
}
