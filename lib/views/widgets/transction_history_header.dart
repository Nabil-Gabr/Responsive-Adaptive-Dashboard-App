import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransctionHistoryHeader extends StatelessWidget {
  const TransctionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History',style: AppStyles.styleSemiBold20,),
        Text('See all',style: AppStyles.styleBold16,),
      ],
    );
  }
}