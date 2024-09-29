import 'package:flutter/material.dart';

class IncomeDetailsItemModel {
  final Color leadingColor;
  final String title;
  final String trailing;

  const IncomeDetailsItemModel(
      {required this.title,
      required this.trailing,
      required this.leadingColor});
}
