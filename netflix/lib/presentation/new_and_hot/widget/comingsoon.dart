import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/presentation/new_and_hot/widget/videowidget.dart';

import '../../../core/size.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 420,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'FEB',
                style: TextStyle(
                  fontSize: 10,
                  color: greycolor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: whitecolor),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 180,
                    child: Text(
                      'Black Panther: Wakanda Forever',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.notifications_none_rounded,
                        color: whitecolor,
                        size: 25,
                      ),
                      Text(
                        'Remind me',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: greycolor),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.info_outline,
                        color: whitecolor,
                        size: 25,
                      ),
                      Text(
                        'Info',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: greycolor),
                      ),
                    ],
                  ),
                  widthes
                ],
              ),
              heightes,
              const Text('Coming on Sunday'),
              heightes,
              const Text(
                'Black Panther: Wakanda Forever',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              heightes,
              const Text(
                "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: greycolor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
