import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/widget/video_list.dart';

class ScreenLaugh extends StatelessWidget {
  const ScreenLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
          return VideoList(
            index: index,
          );
        }),
      )),
    );
  }
}
