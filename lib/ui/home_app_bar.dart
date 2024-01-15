import 'package:adroid_study/util/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: mainBar,
      title: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_suggest_outlined, // 아이콘은 Icons.settings_suggest_outlined로 설정
              color: mainBarText, // 색상 설정
              size: 30, // 크기 설정
            ),
          ),
          const SizedBox(width: 3),
          const Text(
            "ADMIN MODE",
            style: TextStyle(
              color: mainBarText,
              fontSize: 25,
            ),
          )
        ],
      ),
      elevation: 0,
    );
  }
}
