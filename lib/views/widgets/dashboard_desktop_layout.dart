import 'package:dash_board_app/views/widgets/custom_all_expensess_and_quick_invoice.dart';
import 'package:dash_board_app/views/widgets/custom_my_card.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        // Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: CustomAllExpensessAndQuickInvoice(),
        ),
        Expanded(child: CustomMyCard())
      ],
    );
  }
}


