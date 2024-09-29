import 'package:dash_board_app/views/widgets/custom_background_container.dart';
import 'package:dash_board_app/views/widgets/income_section.dart';
import 'package:dash_board_app/views/widgets/my_cards_section.dart';
import 'package:dash_board_app/views/widgets/transction_history_section.dart';
import 'package:flutter/material.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 40,)),
          SliverToBoxAdapter(child: MyCardsSection()),

          SliverToBoxAdapter(child: SizedBox(height: 50,)),

          SliverToBoxAdapter(child: Divider(height: 40,color: Color(0xffF1F1F1),)),

          SliverToBoxAdapter(child: TransctionHistorySection()),
          SliverToBoxAdapter(child: SizedBox(height: 24,)),
          SliverToBoxAdapter(child: IncomeSection(),),
        ],
      )
    );
  }
}