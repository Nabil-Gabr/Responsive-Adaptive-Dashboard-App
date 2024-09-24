import 'package:dash_board_app/views/widgets/all_expensess_header.dart';
import 'package:dash_board_app/views/widgets/all_expensess_item_list.dart';
import 'package:dash_board_app/views/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child:  Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemList()
        ],
      ),
    );
  }
}
