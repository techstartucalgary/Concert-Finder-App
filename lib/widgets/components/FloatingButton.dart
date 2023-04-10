import 'package:flutter/material.dart';
import 'package:flutter_concert_app/constants/ColorConstants.dart';

class FloatingButton extends StatelessWidget {
  FloatingButton({
    this.rotation = 0,
    required this.text,
    this.textColor = Colors.white,
    this.boxColor = kPrimaryColor,
    this.shadowColor = const Color.fromARGB(255, 188, 197, 212),
    // this.fontFamily = 'Montserrat',
    this.fontWeight = FontWeight.bold,
  });

  final int rotation;
  String text;
  final Color textColor;
  final Color boxColor;
  final Color shadowColor;
  final FontWeight fontWeight;
  // final String fontFamily;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: rotation,
      child: Container(
          height: 50.0,
          width: 250,
          child: Material(
            borderRadius: BorderRadius.circular(30.0),
            shadowColor: shadowColor,
            color: boxColor,
            elevation: 7.0,
            child: GestureDetector(
              onTap: () {},
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: kTextColor,
                      fontWeight: fontWeight,
                      // fontFamily: fontFamily
                      ),
                ),
              ),
            ),
          )),
    );
  }
}
