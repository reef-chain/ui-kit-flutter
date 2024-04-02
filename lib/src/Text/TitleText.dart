import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class TitleText extends StatelessWidget {
  final String title;
   const TitleText({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: GoogleFonts.poppins(
        color: Colors.grey[800],
        fontSize: 32,
        fontWeight: FontWeight.w500,
      ));
  }
}