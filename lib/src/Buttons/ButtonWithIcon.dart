import 'package:flutter/material.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class ButtonWithIcon extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final IconData icon;
  final Color iconColor;
  const ButtonWithIcon({required this.title, required this.onPressed,required this.icon,required this.iconColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
            icon: Icon(icon,color: iconColor),
                            label: Text(
                             title,
                              style: TextStyle(
                                fontSize: 12,
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
                                  vertical: 12, horizontal: 28),
                            ),
                            onPressed: onPressed,
                          );
  }
}