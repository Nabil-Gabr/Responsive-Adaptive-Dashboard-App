import 'package:dash_board_app/views/widgets/custom_all_expensess_and_quick_invoice.dart';
import 'package:dash_board_app/views/widgets/income_section.dart';
import 'package:dash_board_app/views/widgets/my_cards_section.dart';
import 'package:dash_board_app/views/widgets/transction_history_section.dart';
import 'package:flutter/material.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAllExpensessAndQuickInvoice(),
          SizedBox(
            height: 24,
          ),
          MyCardsSection(),
          TransctionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
