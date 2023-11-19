import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


ThemeData lightTheme = ThemeData(

  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: Colors.blueGrey ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
      elevation: 0.0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
  primarySwatch: Colors.blueGrey ,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey[500],
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: "Cairo",
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600)),
);

