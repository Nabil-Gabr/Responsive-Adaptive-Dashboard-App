import 'package:dash_board_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField({super.key, required this.title, required this.hintText});

  final String title,hintText;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(title,style: AppStyles.styleMedium16(context),),
        const SizedBox(height: 12,),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor:const  Color(0xffFAFAFA),
            hintText: hintText,
            hintStyle: AppStyles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            )
          ),
        ),
      ],
    );
  }
}