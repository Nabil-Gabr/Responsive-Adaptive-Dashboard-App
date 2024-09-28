import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: active ? 32 :8,
      height: 8,
      decoration:  BoxDecoration(
        color: active ? const Color(0xff4EB7F2) : const  Color(0xffE8E8E8),
        borderRadius: const  BorderRadius.all(Radius.circular(8))
      ),
    );
  }
}