import 'package:dash_board_app/core/constants/app_colors.dart';
import 'package:dash_board_app/core/utils/size_config.dart';
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
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0xff4EB7F2),
                  )),
            )
          : null,
      backgroundColor: AppColorLight.scaffoldBackgroundColor,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
