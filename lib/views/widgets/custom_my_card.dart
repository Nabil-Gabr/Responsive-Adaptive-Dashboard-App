import 'package:dash_board_app/core/constants/app_colors.dart';
import 'package:dash_board_app/core/utils/app_images.dart';
import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMyCard extends StatelessWidget {
  const CustomMyCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return AspectRatio(
      aspectRatio: 84 / 43,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: AppColorLight.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 31, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Flexible(
                  child: SizedBox(
                height: 20,
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name card',
                        style: AppStyles.styleRegular16(context)
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        'Syah Bandi',
                        style: AppStyles.styleMedium20(context),
                      )
                    ],
                  ),
                  SvgPicture.asset(Assets.imagesGallery),
                ],
              ),
              const Expanded(child: SizedBox()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context).copyWith(
                        color: Colors.white,
                        fontSize: width >= 1200 && width < 1210 ? 18 : null),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
              const Flexible(
                  child: SizedBox(
                height: 27,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
