import 'package:flutter/material.dart';

import '../../../core/size.dart';
import '../../search/widget/titel.dart';
import 'main_card.dart';

class MainSanam extends StatelessWidget {
  const MainSanam({
    Key? key,
    required this.url,
    required this.titels,
  }) : super(key: key);

  final String url;
  final String titels;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightes,
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Titel(
            titel: titels,
          ),
        ),
        LimitedBox(
          maxHeight: 240,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => Maincard(url: url))),
        )
      ],
    );
  }
}
