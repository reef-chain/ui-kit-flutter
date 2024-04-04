import 'package:flutter/material.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class PlainInputField extends StatelessWidget {
  final TextEditingController? controller;
  final bool obscureText;
  final String hintText;
  const PlainInputField({required this.hintText, required this.controller,this.obscureText =false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 14),
                        decoration: BoxDecoration(
                          color: Styles.whiteColor,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0x20000000),
                            width: 1,
                          ),
                        ),
                        child: TextField(
                          controller: controller,
                          obscureText: this.obscureText,
                          decoration: InputDecoration.collapsed(
                              hintText: this.hintText,
                        ),
                      ));
  }
}