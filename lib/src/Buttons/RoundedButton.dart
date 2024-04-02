import 'package:flutter/material.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final double width;
  final bool isDisabled;
  const RoundedButton({required this.title, required this.onPressed,this.width=double.infinity,this.isDisabled = true, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    splashFactory: isDisabled
                        ? NoSplash.splashFactory
                        : InkSplash.splashFactory,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    shadowColor: const Color(0x559d6cff),
                    elevation: 5,
                    backgroundColor: isDisabled
                        ? const Color(0xff9d6cff)
                        : Styles.secondaryAccentColor,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                  
                  },
                  child: Builder(builder: (context) {
                    return Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Styles.whiteColor
                      ),
                    );
                  }),
                ),
              );
  }
}