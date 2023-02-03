import 'package:flutter/material.dart';

import '../../../core/color/colors.dart';
import '../screen_home.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 620,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/jTKHoMmaKHv6IlpKDcouusMZ48Z.jpg'))),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.add,
                    color: whitecolor,
                    size: 25,
                  ),
                  Text(
                    'My List',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: greycolor),
                  ),
                ],
              ),
              const PlayBotton(),
              Column(
                children: const [
                  Icon(
                    Icons.info_outline,
                    color: whitecolor,
                    size: 25,
                  ),
                  Text(
                    'info',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: greycolor),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
