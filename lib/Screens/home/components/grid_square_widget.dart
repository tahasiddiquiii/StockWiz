import 'package:flutter/material.dart';
import 'package:stock_wiz/constants/colors/colors.dart';
import 'package:stock_wiz/constants/styling/app_style.dart';

class GridSquareWidget extends StatelessWidget {
  const GridSquareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRowWithDivider(
            _buildColumn('Estimated Gains', '+13.19%', true),
            _buildColumn('Status', 'In Buying Range', true),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 100,
                height: 1,
                color: AppColors.white.withOpacity(0.2),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: 100,
                height: 1,
                color: AppColors.white.withOpacity(0.2),
              ),
            ],
          ),
          _buildRowWithDivider(
            _buildColumn('Stop Loss', '₹1002.00', false),
            _buildColumn('Target', '₹1034.00', false),
          ),
        ],
      ),
    );
  }

  Widget _buildRowWithDivider(Widget firstChild, Widget secondChild) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Expanded(child: firstChild),
          VerticalDivider(
            color: Colors.white.withOpacity(0.2),
            thickness: 1,
            width: 15,
          ),
          Expanded(child: secondChild),
        ],
      ),
    );
  }

  Widget _buildColumn(String title, String value, bool isPositive) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppStyling.headingStyleWhiteF14W600(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          value,
          style: AppStyling.headingStyleWhiteF14W600(
            fontSize: 12,
            color: isPositive ? Colors.green : Colors.white,
          ),
        ),
      ],
    );
  }
}
