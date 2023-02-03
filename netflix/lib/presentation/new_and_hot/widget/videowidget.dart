import 'package:flutter/material.dart';

import '../../../core/color/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 180,
          child: Image.network(
            'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.volume_off_outlined,
              color: whitecolor,
              size: 20,
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
        ),
      ],
    );
  }
}
