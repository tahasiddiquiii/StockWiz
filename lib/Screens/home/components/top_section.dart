import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stock_wiz/constants/colors/colors.dart';

import '../../../common/custom_text_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Container(
                width: 58.0,
                height: 58.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.white.withOpacity(0.37),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image.asset(
                    'assets/images/avatar.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: CustomTextField(
                  hintText: 'Search for “Jio”',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0).copyWith(left: 20),
                    child: SvgPicture.asset('assets/svg/icons/search.svg'),
                  ),
                  sufixIcon: Padding(
                    padding: const EdgeInsets.all(12.0).copyWith(right: 13),
                    child:
                        SvgPicture.asset('assets/svg/icons/notification.svg'),
                  ),
                  color: Colors.transparent,
                  borderWidth: 0.5,
                  textColor: AppColors.white,
                  cornerRadius: 12,
                  borderColor: AppColors.white.withOpacity(0.3),
                  cursorColor: AppColors.white,
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: AppColors.white.withOpacity(0.3),
          thickness: 0.5,
        ),
      ],
    );
  }
}
