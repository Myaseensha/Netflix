import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'package:netflix/presentation/search/widget/search_idle.dart';
import 'package:netflix/presentation/search/widget/search_result.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CupertinoSearchTextField(
            padding: EdgeInsets.all(10),
            backgroundColor: bottonwhite,
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: greycolor,
            ),
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              color: greycolor,
            ),
            style: TextStyle(color: whitecolor),
          ),
          // Expanded(child: SearchIdleWidget()),
          Expanded(child: SearchResult())
        ],
      ),
    )));
  }
}
