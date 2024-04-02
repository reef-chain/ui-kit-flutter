import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Title Text", style: GoogleFonts.poppins(
        color: Colors.grey[800],
        fontSize: 32,
        fontWeight: FontWeight.w500,
      ));
  }
}