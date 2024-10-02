import 'package:dash_board_app/views/widgets/adaptive_layout.dart';
import 'package:dash_board_app/views/widgets/custom_drawer.dart';
import 'package:dash_board_app/views/widgets/dashboard_desktop_layout.dart';
import 'package:dash_board_app/views/widgets/dashboard_mobile_layout.dart';
import 'package:dash_board_app/views/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Colors.white,
              leading:
                  IconButton(onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  }, icon: const Icon(Icons.menu,color: Color(0xff4EB7F2),)),
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
