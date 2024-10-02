import 'package:dash_board_app/core/utils/app_images.dart';
import 'package:dash_board_app/models/all_expensess_item_model.dart';
import 'package:dash_board_app/views/widgets/all_expensess_item.dart';
import 'package:flutter/material.dart';

class AllExpensessItemList extends StatefulWidget {
  const AllExpensessItemList({super.key});

  @override
  State<AllExpensessItemList> createState() => _AllExpensessItemListState();
}

class _AllExpensessItemListState extends State<AllExpensessItemList> {
  final List itemModel = [
    const AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        data: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        data: 'April 2022',
        price: r'$20,129'),
    const AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        data: 'April 2022',
        price: r'$20,129'),
  ];
  int actineIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    actineIndex = 0;
                  });
                },
                child: AllExpensessItem(
                  itemModel: itemModel[0],
                  isSelected: actineIndex == 0,
                ))),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    actineIndex = 1;
                  });
                },
                child: AllExpensessItem(
                  itemModel: itemModel[1],
                  isSelected: actineIndex == 1,
                ))),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    actineIndex = 3;
                  });
                },
                child: AllExpensessItem(
                  itemModel: itemModel[2],
                  isSelected: actineIndex == 3,
                ))),
      ],
    );

    // return Row(
    //   children: itemModel.asMap().entries.map(
    //     (e) {
    //       int index = e.key;
    //       var item = e.value;

    //       return Expanded(
    //           child: GestureDetector(
    //             onTap: () {
    //             setState(() {
    //               actineIndex=index;
    //             });
    //           },
    //             child: AllExpensessItem(itemModel: item, isSelected: actineIndex==index,)));
    //     },
    //   ).toList(),
    // );
  }
}
