import 'package:dash_board_app/views/widgets/all_expensess.dart';
import 'package:dash_board_app/views/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class CustomAllExpensessAndQuickInvoice extends StatelessWidget {
  const CustomAllExpensessAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        
    
        AllExpensess(),
    
        SizedBox(
          height: 24,
        ),
    
        QuickInvoice(),
    
        // AllExpensess(),
        // SizedBox(height: 24,),
        // QuickInvoice(),
      ],
    );
  }
}