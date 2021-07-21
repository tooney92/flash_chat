import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                    Container(
                      child: Image.asset('images/logo.png'),
                      height: 60.0,
                    ),
                    Text(
                      'Flash Chat',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: WelcomeScreenButtons('sign up', 'registration_screen'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: WelcomeScreenButtons('login', 'login_screen'),
                )
              ],
            ),
          ),
        ));
  }
}

class WelcomeScreenButtons extends StatelessWidget {
  String text;
  String screen;
  WelcomeScreenButtons(this.text, this.screen);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.lightBlueAccent,
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
