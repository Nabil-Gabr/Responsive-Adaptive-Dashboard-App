import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:dash_board_app/models/income_details_item_model.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.itemModel});
  final IncomeDetailsItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return 
        ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                color: itemModel.leadingColor,
                borderRadius: const BorderRadius.all(Radius.circular(12))),
          ),
          title: Text(
            itemModel.title,
            style: AppStyles.styleRegular16(context),
          ),
          trailing: Text(
            itemModel.trailing,
            style: AppStyles.styleMedium16(context),
          ),
        )
        ;
  }
}
