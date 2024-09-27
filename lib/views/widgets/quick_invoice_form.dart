import 'package:dash_board_app/views/widgets/custom_title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTitleTextField(title: 'Customer Name', hintText: 'Type customer name')),
            SizedBox(width: 16 ,),
            Expanded(child: CustomTitleTextField(title: 'Customer Email', hintText: 'Type customer email')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: CustomTitleTextField(title: 'Item name', hintText: 'Type customer name')),
            SizedBox(width: 16 ,),
            Expanded(child: CustomTitleTextField(title: 'Item mount', hintText: 'USD')),
          ],
        )
      ],
    );
  }
}