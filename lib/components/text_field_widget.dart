import 'package:flutter/material.dart';
// import '../components/rounded_button.dart';

class TextFieldWidget extends StatelessWidget {
  final String message;
  final void Function(String) onChangedFunc;
  TextFieldWidget(this.message, this.onChangedFunc);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChangedFunc,
      decoration: InputDecoration(
        hintText: message,
        hintStyle: TextStyle(color: Colors.black54),
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
