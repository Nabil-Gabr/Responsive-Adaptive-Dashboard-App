import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:dash_board_app/models/income_details_item_model.dart';
import 'package:flutter/material.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.itemModel});
  final IncomeDetailsItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(
                  color: itemModel.leadingColor,
                  borderRadius: const BorderRadius.all(Radius.circular(12))),
            ),
            const SizedBox(width: 4,),
            Text(
              itemModel.title,
              style: AppStyles.styleRegular12,
            ),
          ],
        ),
        Text(
          itemModel.trailing,
          style: AppStyles.styleRegular12,
        ),
      ],
    )
        // ListTile(
        //   leading: Container(
        //     width: 6,
        //     height: 6,
        //     decoration: BoxDecoration(
        //         color: itemModel.leadingColor,
        //         borderRadius: const BorderRadius.all(Radius.circular(12))),
        //   ),
        //   title: Text(
        //     itemModel.title,
        //     style: AppStyles.styleRegular12,
        //   ),
        //   trailing: Text(
        //     itemModel.trailing,
        //     style: AppStyles.styleRegular12,
        //   ),
        // )
        ;
  }
}
