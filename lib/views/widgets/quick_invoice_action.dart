import 'package:dash_board_app/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class QuickInvoiceAction extends StatelessWidget {
  const QuickInvoiceAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            textButton: 'Add more details',
            backgourndColor: Colors.white,
            textColor: Color(0xff4EB7F2),
          )
        ),
        SizedBox(width: 24,),
        Expanded(
          child: CustomButton(
            textButton: 'Send Money',
          )
        ),
    
      ],
    );
  }
}