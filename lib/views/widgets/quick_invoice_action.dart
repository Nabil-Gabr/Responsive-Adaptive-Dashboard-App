import 'package:dash_board_app/core/constants/app_colors.dart';
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
          backgourndColor: AppColorLight.seconderyColor,
          textColor: AppColorLight.primaryColor,
        )),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: CustomButton(
          textButton: 'Send Money',
        )),
      ],
    );
  }
}
