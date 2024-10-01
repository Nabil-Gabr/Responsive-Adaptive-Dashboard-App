import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:dash_board_app/models/transction_history_model.dart';
import 'package:flutter/material.dart';

class TransctionHistoryItem extends StatelessWidget {
  const TransctionHistoryItem({super.key, required this.itteModel});
  final TransctionHistoryModel itteModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color.fromARGB(255, 243, 242, 242),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          itteModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          itteModel.date,
          style:
              AppStyles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          itteModel.price,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: itteModel.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
