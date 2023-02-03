import 'package:flutter/material.dart';

class Maincard extends StatelessWidget {
  const Maincard({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 150,
        height: 240,
        decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(url), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
