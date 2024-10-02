import 'package:dash_board_app/core/widgets/custom_background_container.dart';
import 'package:dash_board_app/views/widgets/custom_header_section.dart';
import 'package:dash_board_app/views/widgets/income_section_body.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          CustomHeaderSection(titleSection: 'Income'),
          IncomeSectionBody()
        ],
      ),
    );
  }
}
