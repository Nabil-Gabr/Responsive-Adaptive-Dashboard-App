import 'package:dash_board_app/views/widgets/tarnsction_history_list_view.dart';
import 'package:dash_board_app/views/widgets/transction_history_header.dart';
import 'package:flutter/material.dart';

class TransctionHistorySection extends StatelessWidget {
  const TransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransctionHistoryHeader(),
        TarnsctionHistoryListView(),
      ],
    );
  }
}
