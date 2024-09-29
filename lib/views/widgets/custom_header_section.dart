import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:dash_board_app/views/widgets/all_expensess_header_range_options.dart';
import 'package:flutter/material.dart';

class CustomHeaderSection extends StatelessWidget {
  const CustomHeaderSection({
    super.key, required this.titleSection,
  });
  final String titleSection;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(titleSection,style: AppStyles.styleSemiBold20,),
        const AllExpensessHeaderRangeOptions(),
      ],
    );
  }
}