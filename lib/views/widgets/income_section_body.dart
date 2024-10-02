import 'package:dash_board_app/core/utils/size_config.dart';
import 'package:dash_board_app/views/widgets/income_chart.dart';
import 'package:dash_board_app/views/widgets/income_chart_details.dart';
import 'package:dash_board_app/views/widgets/income_details_list_view.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const IncomeChartDetails()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(
                width: 30,
              ),
              Expanded(flex: 2, child: IncomeDetailsListView()),
            ],
          );
  }
}
