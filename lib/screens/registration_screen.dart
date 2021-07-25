import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // new
import 'package:firebase_auth/firebase_auth.dart'; // new
import 'package:provider/provider.dart';
import '../components/rounded_button.dart';
import '../components/text_field_widget.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  void textfieldHandler(String value) {
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextFieldWidget("enter your password", textfieldHandler),
            SizedBox(
              height: 8.0,
            ),
            TextFieldWidget("enter your password", textfieldHandler),
            SizedBox(
              height: 24.0,
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: RoundedButton(
                    'register', 'registration_screen', Colors.lightBlueAccent)),
          ],
        ),
      ),
    );
  }
}
