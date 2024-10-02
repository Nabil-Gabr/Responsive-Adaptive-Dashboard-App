import 'package:dash_board_app/core/widgets/custom_background_container.dart';
import 'package:dash_board_app/views/widgets/income_section.dart';
import 'package:dash_board_app/views/widgets/my_cards_section.dart';
import 'package:dash_board_app/views/widgets/transction_history_section.dart';
import 'package:flutter/material.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          
          MyCardsSection(),

          TransctionHistorySection(),
          SizedBox(height: 24,),
          IncomeSection(),
        ],
      )
    );
  }
}