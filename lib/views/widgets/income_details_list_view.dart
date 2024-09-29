import 'package:dash_board_app/models/income_details_item_model.dart';
import 'package:dash_board_app/views/widgets/income_details_item.dart';
import 'package:flutter/material.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});

  static const List<IncomeDetailsItemModel> itemModel=[
    IncomeDetailsItemModel(
      title: 'tit', 
      trailing: '40', 
      leadingColor: Color(0xff208CC8),
    ),

    IncomeDetailsItemModel(
      title: 'tit', 
      trailing: '40', 
      leadingColor: Color(0xff208CC8),
    ),

    IncomeDetailsItemModel(
      title: 'tit', 
      trailing: '40', 
      leadingColor: Color(0xff208CC8),
    ),

    IncomeDetailsItemModel(
      title: 'tit', 
      trailing: '40', 
      leadingColor: Color(0xff208CC8),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemModel.length,
      itemBuilder:(context, index) {
        return IncomeDetailsItem(itemModel: itemModel[index]);
      } ,
    );
  }
}