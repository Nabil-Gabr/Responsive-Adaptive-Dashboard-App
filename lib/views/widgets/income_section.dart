import 'package:dash_board_app/views/widgets/custom_background_container.dart';
import 'package:dash_board_app/views/widgets/custom_header_section.dart';
import 'package:dash_board_app/views/widgets/income_chart.dart';
import 'package:dash_board_app/views/widgets/income_details_list_view.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomBackgroundContainer(
      child: Column(
        children: [
          const CustomHeaderSection(titleSection: 'Income'),
          Container(
            color: Colors.red,
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                SizedBox(width: 30,),
                Expanded(child: IncomeDetailsListView()),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}

