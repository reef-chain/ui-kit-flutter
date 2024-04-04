import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reef_ui_kit/constants/styles.dart';

class Header extends StatelessWidget {
  final Widget child;
  const Header({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
            child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
          ),
          child: Material(
            color: Colors.white,
            elevation: 0,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  color: Styles.primaryBackgroundColor,
                ),
                Column(
                  children: <Widget>[
                    Material(
                      elevation: 3,
                      shadowColor: Colors.black45,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/reef-header.png",package: 'reef_ui_kit'),
                                fit: BoxFit.cover,
                                alignment: Alignment(-0.82, 1.0)),
                          ),
                          child: child),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}