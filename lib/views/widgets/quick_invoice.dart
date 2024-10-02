import 'package:dash_board_app/core/widgets/custom_background_container.dart';
import 'package:dash_board_app/views/widgets/latest_transaction.dart';
import 'package:dash_board_app/views/widgets/quick_invoice_action.dart';
import 'package:dash_board_app/views/widgets/quick_invoice_form.dart';
import 'package:dash_board_app/views/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(height: 24,),
        LatestTransaction(),
        Divider(
          height: 48,
        ),
        QuickInvoiceForm(),
        SizedBox(height: 24,),
        QuickInvoiceAction()
      ],
    ));
  }
}


