import 'package:dash_board_app/core/utils/app_images.dart';
import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMyCard extends StatelessWidget {
  const CustomMyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 84 / 43,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          color: Color(0xff4EB7F2),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child:  Padding(
          padding: const EdgeInsets.only(top: 20.0,left: 31,right: 24,bottom: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name card',style: AppStyles.styleRegular16.copyWith(
                        color: Colors.white
                      ),),
                      const Text('Syah Bandi',style: AppStyles.styleMedium20,)
                    ],
                  ),
          
                  Padding(
                    padding: const EdgeInsets.only(right: 21.0),
                    child: SvgPicture.asset(Assets.imagesGallery),
                  ),
                ],
              ),
              const Expanded(child: SizedBox()),
               Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('0918 8124 0042 8129',style: AppStyles.styleSemiBold24.copyWith(
                        color: Colors.white
                      ),),
                      Text('12/20 - 124',style: AppStyles.styleRegular16.copyWith(
                        color: Colors.white
                      ),)
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
