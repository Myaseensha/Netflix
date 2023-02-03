import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';

import '../../core/size.dart';
import 'app_bar.dart';

class ScreenDownloades extends StatelessWidget {
  const ScreenDownloades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Appbarcoustem(
            title: 'Downloads',
          )),
      body: ListView(
        children: [
          const _SmartDownloads(),
          Section2(),
          heightes,
          const Section3(),
        ],
      ),
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: bottonblue,
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text('Set up',
                    style: TextStyle(
                        color: whitecolor,
                        fontSize: 20,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60, top: 40),
          child: MaterialButton(
            color: bottonwhite,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('Find More to Download',
                  style: TextStyle(
                      color: whitecolor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: const [
          widthes,
          Icon(
            Icons.settings_outlined,
            color: greycolor,
            size: 30,
          ),
          widthes,
          Text(
            'Smart Downloads',
            style: bigM,
          )
        ],
      ),
    );
  }
}

class DownloadeImage extends StatelessWidget {
  const DownloadeImage(
      {Key? key,
      required this.imagelist,
      required this.margin,
      this.angel = 0,
      required this.radius,
      required this.size})
      : super(key: key);

  final String imagelist;
  final double angel;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angel * pi / 180,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imagelist),
            ),
          ),
        ),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final imagelist = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vo498uCUuu3ma2Q5bvjfRTPldtY.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 16.0, left: 10),
          child: Text(
            "Introducing Downloads for you",
            textAlign: TextAlign.start,
            style: bigXl,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20,
            top: 15,
          ),
          child: Text(
              style: bigM,
              textAlign: TextAlign.start,
              "We'll download a personalosed selection of movies and shows for you ,so there's always something to watch on your device. "),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              backgroundColor: bottonwhite,
              radius: size.width * 0.40,
            ),
            DownloadeImage(
              radius: 10,
              size: Size(size.width * 0.30, size.height * 0.30),
              angel: 18,
              imagelist: imagelist[0],
              margin: const EdgeInsets.only(left: 160),
            ),
            DownloadeImage(
              size: Size(size.width * 0.30, size.height * 0.30),
              angel: -18,
              imagelist: imagelist[1],
              margin: const EdgeInsets.only(right: 160),
              radius: 10,
            ),
            DownloadeImage(
              radius: 12,
              size: Size(size.width * 0.40, size.height * 0.34),
              imagelist: imagelist[2],
              margin: const EdgeInsets.only(top: 5),
            ),
          ],
        ),
      ],
    );
  }
}
