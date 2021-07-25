import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/rounded_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.bounceInOut);
    controller.forward();
    controller.addListener(() {
      print("its happening ${animation.value}");
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'Hello world!',
          textStyle: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          speed: const Duration(milliseconds: 2000),
        ),
      ],
      totalRepeatCount: 4,
      pause: const Duration(milliseconds: 1000),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    );
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: [
                    Hero(
                      tag: 'logo',
                      child: Container(
                        child: Image.asset('images/logo.png'),
                        height: animation.value * 100,
                      ),
                    ),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0,
                        color: Colors.black38,
                        fontFamily: 'Agne',
                      ),
                      child: AnimatedTextKit(
                        // repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Flash Chat',
                            speed: const Duration(milliseconds: 600),
                          ),
                        ],
                        isRepeatingAnimation: true,
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: RoundedButton(
                      'sign up', 'registration_screen', Colors.lightBlueAccent),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child:
                      RoundedButton('login', 'login_screen', Colors.blueAccent),
                )
              ],
            ),
          ),
        ));
  }
}
