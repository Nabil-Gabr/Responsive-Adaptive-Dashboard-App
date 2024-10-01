import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:dash_board_app/models/user_info_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.itemModel,
  });
  final UserInfoItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(itemModel.image),
        title: Text(
          itemModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          itemModel.subTitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
