import 'package:flutter/material.dart';

class WikiWidget extends StatelessWidget {
  final wikiItems;

  const WikiWidget({Key? key, required this.wikiItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min, // 최소 공간만 차지하도록 설정
            children: [
              Text(
                wikiItems['wikiTitle'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Text(
                wikiItems['registrationDate'].substring(0,10),
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }

}