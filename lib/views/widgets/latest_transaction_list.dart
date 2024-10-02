import 'package:dash_board_app/core/utils/app_images.dart';
import 'package:dash_board_app/models/user_info_item_model.dart';
import 'package:dash_board_app/views/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});

  static const List<UserInfoItemModel> itemModel = [
    UserInfoItemModel(
        title: 'Lekan Okeowo',
        subTitle: 'demo@gmail.com',
        image: Assets.imagesAvatar3),
    UserInfoItemModel(
        title: 'Lekan Okeowo',
        subTitle: 'demo@gmail.comdemo@gmail.comdemo@gmail.com',
        image: Assets.imagesAvatar3),
    UserInfoItemModel(
        title: 'Lekan Okeowo',
        subTitle: 'demo@gmail.com',
        image: Assets.imagesAvatar3),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: itemModel
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(itemModel: e)),
            )
            .toList(),
      ),
    );
  }
}
