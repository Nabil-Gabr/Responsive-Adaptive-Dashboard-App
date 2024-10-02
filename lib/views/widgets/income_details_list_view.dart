import 'package:dash_board_app/models/income_details_item_model.dart';
import 'package:dash_board_app/views/widgets/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});

  static const List<IncomeDetailsItemModel> itemModel = [
    IncomeDetailsItemModel(
      title: 'Design service',
      trailing: '40%',
      leadingColor: Color(0xff208CC8),
    ),
    IncomeDetailsItemModel(
      title: 'Design product',
      trailing: '25%',
      leadingColor: Color(0xff4EB7F2),
    ),
    IncomeDetailsItemModel(
      title: 'Product royalti',
      trailing: '20%',
      leadingColor: Color(0xff064061),
    ),
    IncomeDetailsItemModel(
      title: 'Other',
      trailing: '2%',
      leadingColor: Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemModel
          .map(
            (e) => IncomeDetailsItem(itemModel: e),
          )
          .toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: itemModel.length,
    //   itemBuilder:(context, index) {
    //     return IncomeDetailsItem(itemModel: itemModel[index]);
    //   } ,
    // );
  }
}
