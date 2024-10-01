import 'package:dash_board_app/models/transction_history_model.dart';
import 'package:dash_board_app/views/widgets/transction_history_item.dart';
import 'package:flutter/material.dart';

class TarnsctionHistoryListView extends StatelessWidget {
  const TarnsctionHistoryListView({super.key});
  
  static const List<TransctionHistoryModel> itteModel=[
    TransctionHistoryModel(
      title: 'Cash Withdrawal',
       date: '29 Sep, 2024 ', 
       price: 
       '\$27,129', 
       isWithdrawal: false,
      ),

      TransctionHistoryModel(
      title: 'Landing Page project',
       date: '25 Sep, 2024 ', 
       price: 
       '\$21,122', 
       isWithdrawal: true,
      ),

      TransctionHistoryModel(
      title: 'Juni Mobile App project',
       date: '17 Sep, 2024 ', 
       price: 
       '\$19,168', 
       isWithdrawal: false,
      )
  ];

  @override
  Widget build(BuildContext context) {

    return Column(
      children: itteModel.map(
              (e) => TransctionHistoryItem(itteModel: e),
            )
            .toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: itteModel.length,
    //   itemBuilder: (context, index) {
    //     return  TransctionHistoryItem(itteModel: itteModel[index],);
    //   },
    // );
  }
}