import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
              color: Color(0xFFF1F1F1),
              borderRadius: BorderRadius.all(Radius.circular(48))),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
            size: 18,
          ),
        )
      ],
    );
  }
}
