import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class Heading extends StatelessWidget {
  final String title;
   const Heading({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.bodyLarge);
  }
}