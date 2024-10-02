import 'package:dash_board_app/core/constants/app_colors.dart';
import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AllExpensessHeaderRangeOptions extends StatelessWidget {
  const AllExpensessHeaderRangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: const BoxDecoration(
        color: AppColorLight.seconderyColor,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xFF064061),
          )
        ],
      ),
    );
  }
}
