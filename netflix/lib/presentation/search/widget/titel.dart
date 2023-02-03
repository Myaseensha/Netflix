import 'package:flutter/material.dart';

import '../../../core/size.dart';

class Titel extends StatelessWidget {
  final String titel;
  const Titel({Key? key, required this.titel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: Text(
        titel,
        style: bigXl,
      ),
    );
  }
}
