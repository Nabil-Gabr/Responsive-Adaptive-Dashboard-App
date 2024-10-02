import 'package:dash_board_app/core/constants/app_colors.dart';
import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
              color: AppColorLight.seconderyColor,
              borderRadius: BorderRadius.all(Radius.circular(48))),
          child: const Icon(
            Icons.add,
            color: AppColorLight.primaryColor,
            size: 18,
          ),
        )
      ],
    );
  }
}
