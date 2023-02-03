import 'package:flutter/cupertino.dart';
import 'package:netflix/core/color/colors.dart';

import '../../../core/size.dart';
import 'titel.dart';

const imageurl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/5XEJPSw6H3Qo7X5ifdftQhBGMrO.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Titel(
          titel: 'Top Seraches',
        ),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearch(),
              separatorBuilder: (context, index) => heightes,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearch extends StatelessWidget {
  const TopSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: size * .39,
          height: 95,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageurl),
            ),
          ),
        ),
        widthes,
        const Expanded(
          child: Text(
            'Movie Name',
            style: bigM,
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: whitecolor,
          size: 45,
        ),
      ],
    );
  }
}
