import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int asActive = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
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
          PieChartSectionData(
              value: 22,
              radius: asActive == 0 ? 60 : 50,
              showTitle: false,
              color: const Color(0xffE2DECD)),
          PieChartSectionData(
              value: 20,
              radius: asActive == 1 ? 60 : 50,
              showTitle: false,
              color: const Color(0xff064061)),
          PieChartSectionData(
              value: 25,
              radius: asActive == 2 ? 60 : 50,
              showTitle: false,
              color: const Color(0xff4EB7F2)),
          PieChartSectionData(
              value: 40,
              radius: asActive == 3 ? 60 : 50,
              showTitle: false,
              color: const Color(0xff208CC8)),
        ]);
  }
}
