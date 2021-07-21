// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreenButtons extends StatelessWidget {
  final String text;
  final String screen;
  final Color? buttonColor;
  WelcomeScreenButtons(this.text, this.screen, this.buttonColor);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: buttonColor,
      child: MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, screen);
        },
        minWidth: 180.0,
        height: 45.0,
        child: Text(text),
      ),
    );
  }
}
