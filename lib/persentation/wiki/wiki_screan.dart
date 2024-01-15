import 'dart:convert';

import 'package:adroid_study/persentation/wiki/components/wiki_widget.dart';
import 'package:adroid_study/persentation/wiki/wiki_event.dart';
import 'package:adroid_study/api/wiki_api.dart';
import 'package:adroid_study/ui/button.dart';
import 'package:adroid_study/ui/home_app_bar.dart';
import 'package:adroid_study/util/colors.dart';
import 'package:adroid_study/util/size.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WikiScrean extends StatefulWidget {
  const WikiScrean({Key? key}) : super(key: key);

  @override
  State<WikiScrean> createState() => _WikiScreanState();
}

class _WikiScreanState extends State<WikiScrean> {
  final _controller = TextEditingController();
  int currentPage = 1; // Define currentPage variable

  @override
  void initState() {
    super.initState();
    final viewModel = context.read<WikiApi>();
    viewModel.onEvent(const LoadWikiList(1, listSize, "admin", "@"));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: _body(context), // const 제거
    );
  }
  Widget _body(BuildContext context) {
    final viewModel = context.watch<WikiApi>();
    final dynamic wiki = viewModel.wiki['row'];
    final bool loading = viewModel.loading;
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xffffffff),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(1, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            _buildTitle(),
            _buildSubTitle(),
            _buildBody(wiki,loading), // itemList를 body에 전달
            Botton(
              viewModel: viewModel,
              currentPage: currentPage,
              onPageChanged: (page) {
                setState(() {
                  print(page);
                  currentPage = page; // Update the current page in the state
                });
                // Perform any other actions related to page change
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        constraints: const BoxConstraints(
          minHeight: 40,
        ),
        child: const Row(
          children: [
            SizedBox(width: 10),
            Text("wiki 목록", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ],
        ),
      ),
    );
  }

  Widget _buildSubTitle() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: grey,
        constraints: const BoxConstraints(
          minHeight: 40,
        ),
        child: const Row(
          children: [
            SizedBox(width: 10),
            Text("제목", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(wiki, loading) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          constraints: const BoxConstraints(
            minHeight: 40,
          ),
          child: ListView.separated(
            itemBuilder: (context, index) {
              final response = wiki[index];
              return WikiWidget(
                wikiItems: response,
              );
            },
            itemCount: wiki.length,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 10);
            },
          ),
        ),
      ),
    );
  }
}
