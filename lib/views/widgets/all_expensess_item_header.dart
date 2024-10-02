import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 60,
            ),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: 60,
                height: 60,
                decoration:const ShapeDecoration(
                  color:  Color(0xFFFAFAFA),
                  shape: OvalBorder()
                ),
                child: Center(child: SvgPicture.asset(image)),
              ),
            ),
          ),
        ),

        const Icon(Icons.keyboard_arrow_right,color: Color(0xff064061),)
      ],
    );
  }
}