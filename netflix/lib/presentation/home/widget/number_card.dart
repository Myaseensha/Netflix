import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/size.dart';

import '../../search/widget/titel.dart';

class NumaberCard extends StatelessWidget {
  const NumaberCard({Key? key, required this.url, required this.index})
      : super(key: key);

  final String url;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
              height: 240,
            ),
            Container(
              width: 150,
              height: 240,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(url), fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
        Positioned(
          left: -20,
          bottom: -33,
          child: BorderedText(
            strokeColor: whitecolor,
            strokeWidth: 4.0,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                  shadows: [
                    BoxShadow(
                      blurRadius: 12.0,
                      color: Colors.white,
                    ),
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(0, 2.0),
                    ),
                  ],
                  fontSize: 170,
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class Top10Widget extends StatelessWidget {
  const Top10Widget({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heightes,
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Titel(
            titel: 'Top 10 Tv Shows In India Today',
          ),
        ),
        LimitedBox(
          maxHeight: 240,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  10,
                  (index) => NumaberCard(
                        url: url,
                        index: index,
                      ))),
        )
      ],
    );
  }
}
