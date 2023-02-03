import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/size.dart';

class Appbarcoustem extends StatelessWidget {
  const Appbarcoustem({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widthes,
        Text(
          title,
          style: GoogleFonts.montserrat()
              .copyWith(fontSize: 25, fontWeight: FontWeight.w900),
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
    );
  }
}
