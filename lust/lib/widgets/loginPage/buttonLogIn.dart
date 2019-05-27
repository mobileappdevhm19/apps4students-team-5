import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatefulWidget {
  final String buttonText;
  final bool whichButton;
  final Color buttonColor;

  const ButtonLogin({Key key, this.buttonText, this.whichButton, this.buttonColor}) : super(key: key);

  @override
  _ButtonLoginState createState() {
    return new _ButtonLoginState(buttonText, whichButton, buttonColor);
  }
}

class _ButtonLoginState extends State<ButtonLogin> {
  final String buttonText;
  final bool whichButton;
  final Color buttonColor;

  _ButtonLoginState(this.buttonText, this.whichButton, this.buttonColor);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40,
      elevation: 5,
      color: buttonColor,
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      onPressed: _buttonClicked(whichButton),
    );
  }

  _buttonClicked(bool x) {
    setState(() {
      if (x){
        //LOG IN
      }
      else{
        //REGISTER
      }
    });
  }
}