import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/presentation/new_and_hot/widget/videowidget.dart';
import '../../core/size.dart';
import 'widget/comingsoon.dart';
import 'widget/everone.dart';

class NewAndHot extends StatelessWidget {
  const NewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(90),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  title: Text(
                    "New & Hot",
                    style: GoogleFonts.montserrat()
                        .copyWith(fontSize: 25, fontWeight: FontWeight.w900),
                  ),
                  actions: [
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
                    widthes,
                    widthes
                  ],
                  bottom: TabBar(
                    padding: const EdgeInsets.all(5),
                    tabs: const [
                      Tab(
                        text: '🍿 Coming Soon',
                      ),
                      Tab(
                        text: "👀 Everyone's watching",
                      )
                    ],
                    indicator: BoxDecoration(
                      color: whitecolor,
                      borderRadius: BorderRadius.circular(45),
                    ),
                    labelColor: backgroundcolor,
                    labelStyle: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                    unselectedLabelColor: whitecolor,
                    isScrollable: true,
                  ),
                )),
            body: TabBarView(
              children: [
                _buildeComingsoon(context),
                _buildevrey(context),
              ],
            )));
  }
}

Widget _buildevrey(context) {
  return ListView.builder(
    itemBuilder: (BuildContext context, int index) {
      return const EveryoneWatch();
    },
  );
}

Widget _buildeComingsoon(context) {
  return ListView.builder(
    itemBuilder: (context, index) => const ComingSoonWidget(),
  );
}
