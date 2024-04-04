import 'package:flutter/material.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class InputTextField extends StatelessWidget {
  final bool isError;
  final TextEditingController? controller;
   const InputTextField({required this.isError, required this.controller, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            decoration: BoxDecoration(
              color: Styles.whiteColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isError
                    ? Styles.errorColor
                    : const Color(0x20000000),
                width: 1,
              ),
            ),
            child: TextField(
              controller: controller,
              maxLines: 3,
              decoration: const InputDecoration.collapsed(hintText: ''),
              style: TextStyle(
                color: isError
                    ? Styles.errorColor
                    : Styles.textColor,
              ),
            ),
          );
  }
}