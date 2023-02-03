import 'package:flutter/material.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/presentation/search/widget/titel.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Titel(titel: 'Movies & TV'),
        heightes,
        Expanded(
          child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              childAspectRatio: 2 / 3.6,
              shrinkWrap: true,
              children: List.generate(
                20,
                (index) {
                  return const MainCard();
                },
              )),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageurl =
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xf9wuDcqlUPWABZNeDKPbZUjWx0.jpg';
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(imageurl),
        ),
      ),
    );
  }
}
