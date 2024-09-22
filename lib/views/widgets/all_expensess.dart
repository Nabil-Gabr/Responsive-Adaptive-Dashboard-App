import 'package:dash_board_app/core/utils/app_images.dart';
import 'package:dash_board_app/models/all_expensess_item_model.dart';
import 'package:dash_board_app/views/widgets/all_expensess_header.dart';
import 'package:dash_board_app/views/widgets/all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  // static const List<AllExpensessItemModel> itemModelList=[
  //   AllExpensessItemModel(image: Assets.imagesIncome, title: 'Income', data: 'April 2022', price: r'$20,129')
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: const Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(child: SizedBox()),
              Expanded(
                  child: AllExpensessItem(
                itemModel: AllExpensessItemModel(
                    image: Assets.imagesIncome,
                    title: 'Income',
                    data: 'April 2022',
                    price: r'$20,129'),
              ))
            ],
          )
        ],
      ),
    );
  }
}
