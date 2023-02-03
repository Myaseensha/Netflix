import 'package:flutter/material.dart';

import '../../../core/color/colors.dart';
import '../../../core/size.dart';
import 'videowidget.dart';

class EveryoneWatch extends StatelessWidget {
  const EveryoneWatch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Friend',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        heightes,
        const Text(
          "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
          style: TextStyle(
              fontSize: 11, fontWeight: FontWeight.bold, color: greycolor),
        ),
        heightes,
        const VideoWidget(),
        heightes,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            widthes,
            Column(
              children: const [
                Icon(
                  Icons.send_rounded,
                  color: whitecolor,
                  size: 25,
                ),
                Text(
                  'Share',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: greycolor),
                ),
              ],
            ),
            widthes,
            Column(
              children: const [
                Icon(
                  Icons.add,
                  color: whitecolor,
                  size: 30,
                ),
                Text(
                  'My List',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: greycolor),
                ),
              ],
            ),
            widthes,
            Column(
              children: const [
                Icon(
                  Icons.play_arrow,
                  color: whitecolor,
                  size: 28,
                ),
                Text(
                  'Paly',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: greycolor),
                ),
              ],
            ),
            widthes
          ],
        )
      ],
    );
  }
}
