
import 'package:flutter/material.dart';

String? userToken = '';

Color defaultColor = Colors.grey;


Color? buttonColor = Colors.grey[300];
Color pressedColor = Colors.black87;
Color textColor = Colors.black;
Color pressedTextColor = Colors.white;


TextStyle mainTextStyle (int globalIntBetweenAllButtons,int choice)
{
     TextStyle mainTextStyle = TextStyle(
    color:  globalIntBetweenAllButtons == choice ? pressedTextColor : textColor,
    fontSize: 20.0,
    fontWeight: FontWeight.w500,
  );
     return mainTextStyle ;
}


