import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartDetails extends StatefulWidget {
  const IncomeChartDetails({super.key});

  @override
  State<IncomeChartDetails> createState() => _IncomeChartDetailsState();
}

class _IncomeChartDetailsState extends State<IncomeChartDetails> {
  int asActive = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData())),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (flTouchEvent, pieTouchResponse) {
            asActive =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          //1
          PieChartSectionData(
            value: 22,
            titlePositionPercentageOffset: asActive == 0 ? -1.2 : null,
            title: asActive == 0 ? 'Other' : '22%',
            titleStyle: AppStyles.styleRegular16(context)
                .copyWith(color: asActive == 0 ? null : Colors.white),
            radius: asActive == 0 ? 60 : 50,
            color: const Color(0xffE2DECD),
          ),

          //2
          PieChartSectionData(
              value: 20,
              titlePositionPercentageOffset: asActive == 1 ? -1.2 : null,
              title: asActive == 1 ? 'Product royalti' : '20%',
              titleStyle: AppStyles.styleRegular16(context)
                  .copyWith(color: asActive == 1 ? null : Colors.white),
              radius: asActive == 1 ? 60 : 50,
              color: const Color(0xff064061)),

          //3
          PieChartSectionData(
              value: 25,
              titlePositionPercentageOffset: asActive == 2 ? -1.2 : null,
              title: asActive == 2 ? 'Design product' : '25%',
              titleStyle: AppStyles.styleRegular16(context)
                  .copyWith(color: asActive == 2 ? null : Colors.white),
              radius: asActive == 2 ? 60 : 50,
              color: const Color(0xff4EB7F2)),

          //4
          PieChartSectionData(
              value: 40,
              titlePositionPercentageOffset: asActive == 3 ? -1.2 : null,
              title: asActive == 3 ? 'Design service' : '40%',
              titleStyle: AppStyles.styleRegular16(context)
                  .copyWith(color: asActive == 3 ? null : Colors.white),
              radius: asActive == 3 ? 60 : 50,
              color: const Color(0xff208CC8)),
        ]);
  }
}
