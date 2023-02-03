import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/presentation/home/widget/number_card.dart';
import 'widget/intro_page.dart';
import 'widget/main_titel_card.dart';

ValueNotifier<bool> scrol = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});
  final String url =
      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/zI3E2a3WYma5w8emI35mgq5Iurx.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrol,
        builder: (BuildContext context, dynamic value, Widget? child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrol.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrol.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    const IntroWidget(),
                    MainSanam(url: url, titels: 'Released in the past year'),
                    MainSanam(
                      url: url,
                      titels: 'Trending Now',
                    ),
                    Top10Widget(url: url),
                    MainSanam(
                      url: url,
                      titels: 'Temse Dramas',
                    ),
                    MainSanam(
                      url: url,
                      titels: 'Suoth Indian Cinema',
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.black.withOpacity(0.3),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons.png',
                            height: 70,
                            width: 70,
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.cast,
                            color: Colors.white,
                            size: 30,
                          ),
                          widthes,
                          widthes,
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/icon.jpg'),
                          ),
                          widthes
                        ],
                      ),
                    ),
                    scrol.value == true
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 1500),
                            width: double.infinity,
                            height: 40,
                            color: Colors.black.withOpacity(0.3),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                widthes,
                                Text('TV Shows', style: bigM),
                                Text('Movies', style: bigM),
                                Text('Categories', style: bigM),
                                widthes,
                              ],
                            ))
                        : heightes,
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class PlayBotton extends StatelessWidget {
  const PlayBotton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style:
          ButtonStyle(backgroundColor: MaterialStateProperty.all(whitecolor)),
      onPressed: () {},
      label: const Padding(
        padding: EdgeInsets.only(right: 8.0),
        child: Text(
          "Play",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
      ),
      icon: const Icon(Icons.play_arrow, color: Colors.black),
    );
  }
}
