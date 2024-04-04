import 'package:flutter/material.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const PrimaryButton({required this.title,required this.onPressed, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                      child: Text(this.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Styles.whiteColor
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        shadowColor: const Color(0x559d6cff),
                        elevation: 5,
                        backgroundColor: Styles.primaryAccentColor,
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 32),
                      ),
                      onPressed: this.onPressed,
                    );
  }
}