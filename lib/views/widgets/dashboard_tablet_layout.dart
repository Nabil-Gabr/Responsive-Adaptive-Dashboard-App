import 'package:dash_board_app/views/widgets/custom_drawer.dart';
import 'package:dash_board_app/views/widgets/dashboard_mobile_layout.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: DashboardMobileLayout())
      ],
    );
  }
}
