import 'package:dash_board_app/core/utils/app_images.dart';
import 'package:dash_board_app/views/widgets/drawer_item_list_view.dart';
import 'package:dash_board_app/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      child: const Column(
        children: [
          UserInfoListTile(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3),
          SizedBox(
            height: 8,
          ),
          DrawerItemListView()
        ],
      ),
    );
  }
}
