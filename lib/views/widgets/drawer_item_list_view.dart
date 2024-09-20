import 'package:dash_board_app/core/utils/app_images.dart';
import 'package:dash_board_app/models/drawer_item_model.dart';
import 'package:dash_board_app/views/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({super.key});
  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: DrawerItem(drawerItemModel: items[index]),
        );
      },
    );
  }
}