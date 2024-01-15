import 'dart:math';

import 'package:adroid_study/persentation/wiki/wiki_event.dart';
import 'package:adroid_study/util/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Botton extends StatelessWidget {
  final viewModel;
  final ValueChanged<int> onPageChanged; // Callback function to handle page change
  final int currentPage; // Callback function to handle page change
  const Botton({Key? key, required this.viewModel, required this.onPageChanged,required this.currentPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dynamic wiki = viewModel.wiki;
    int maxButtonsToShow = 5;
    int startPage = max(1, currentPage - maxButtonsToShow ~/ 2);
    int totalPage = wiki['total_page'];
    int endPage = min(totalPage, startPage + maxButtonsToShow - 1);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          // ... (이전 페이지 버튼 코드)
          for (int i = startPage; i <= endPage; i++)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: currentPage == i ? Colors.blue : Color(0xfff2f5fa),
                onPrimary: currentPage == i ? Colors.white : Color(0xff858da8),
                minimumSize: const Size(50, 30),
              ),
              onPressed: () {
                viewModel.onEvent(LoadWikiList(i, listSize, "admin", "@"));
                onPageChanged(i);
              },
              child: Text('$i'),
            ),
          // ... (다음 페이지 버튼 코드)
        ],
      ),
    );
  }
}