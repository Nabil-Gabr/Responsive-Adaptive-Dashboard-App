import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:dash_board_app/views/widgets/all_expensess_header_range_options.dart';
import 'package:flutter/material.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('All Expenses',style: AppStyles.styleSemiBold20,),
        AllExpensessHeaderRangeOptions(),
      ],
    );
  }
}