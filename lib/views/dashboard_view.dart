import 'package:dash_board_app/views/widgets/adaptive_layout.dart';
import 'package:dash_board_app/views/widgets/dashboard_desktop_layout.dart';
import 'package:dash_board_app/views/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => Container(color: Colors.red,),
        tabletLayout: (context) =>  const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
