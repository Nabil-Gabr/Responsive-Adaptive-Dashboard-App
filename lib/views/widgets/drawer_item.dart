import 'package:dash_board_app/models/drawer_item_model.dart';
import 'package:dash_board_app/views/widgets/active_drawer_item.dart';
import 'package:dash_board_app/views/widgets/in_active_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isSelected});

  final DrawerItemModel drawerItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
