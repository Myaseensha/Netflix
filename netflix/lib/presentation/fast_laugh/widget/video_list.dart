import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/presentation/search/widget/search_idle.dart';

class VideoList extends StatelessWidget {
  final int index;
  const VideoList({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, bottom: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_off_outlined,
                    color: whitecolor,
                    size: 30,
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
                  ),
                ),
                Column(
                  children: const [
                    CircleAvatar(
                      backgroundImage: NetworkImage(imageurl),
                      radius: 25,
                    ),
                    ActionWidget(icon: Icons.emoji_emotions, titel: 'LOL'),
                    ActionWidget(icon: Icons.add, titel: 'My List'),
                    ActionWidget(icon: Icons.send_outlined, titel: 'Send'),
                    ActionWidget(icon: Icons.play_arrow_rounded, titel: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ActionWidget extends StatelessWidget {
  final IconData icon;
  final String titel;
  const ActionWidget({super.key, required this.icon, required this.titel});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      heightes,
      heightes,
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(
          shadows: const [
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.white,
            ),
            BoxShadow(
              blurRadius: 12.0,
              color: Colors.black,
              offset: Offset(0, 3.0),
            ),
          ],
          icon,
          color: whitecolor,
          size: 30,
        ),
      ),
      Text(
        titel,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          shadows: [
            BoxShadow(
              blurRadius: 8.0,
              color: Colors.white,
            ),
            BoxShadow(
              blurRadius: 10.0,
              color: Colors.black,
              offset: Offset(0, 3.0),
            ),
          ],
        ),
      )
    ]);
  }
}
