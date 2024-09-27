import 'package:dash_board_app/core/utils/app_images.dart';
import 'package:dash_board_app/models/drawer_item_model.dart';
import 'package:dash_board_app/models/user_info_item_model.dart';
import 'package:dash_board_app/views/widgets/drawer_item_list_view.dart';
import 'package:dash_board_app/views/widgets/in_active_drawer_item.dart';
import 'package:dash_board_app/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              itemModel: UserInfoItemModel(
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com',
                  image: Assets.imagesAvatar3),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Setting system', image: Assets.imagesSettings)),
                SizedBox(
                  height: 20,
                ),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: 'Logout account', image: Assets.imagesLogout)),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
