import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reef_ui_kit/constants/Styles.dart';

class GradientButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final double width;
  final bool isEnabled;
  const GradientButton({required this.title, required this.onPressed,this.width=double.infinity,this.isEnabled = true, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            shadowColor: const Color(0x559d6cff),
            elevation: 0,
            backgroundColor: isEnabled
                        ? const Color(0xffe6e2f1)
                        : Colors.transparent,
            padding: const EdgeInsets.all(0),
          ),
          onPressed: onPressed,
          child: Ink(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 22),
            decoration: BoxDecoration(
              color: const Color(0xffe6e2f1),
              gradient: isEnabled
                          ? Styles.buttonGradient
                          : null,
              borderRadius: const BorderRadius.all(Radius.circular(14.0)),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: !isEnabled
                              ? const Color(0x65898e9c)
                              : Colors.white,
                ),
              ),
            ),
          )),
    );
  }
}
