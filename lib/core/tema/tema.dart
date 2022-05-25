import 'package:flutter/material.dart';

ThemeData tema() => ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color.fromARGB(255, 212, 103, 231),
        onPrimary: Colors.white,
        secondary: Color.fromARGB(255, 152, 59, 168),
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        background: Color.fromARGB(255, 200, 7, 235),
        onBackground: Colors.white,
        surface: Color.fromARGB(255, 227, 107, 248),
        onSurface: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.purple,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.purple,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.purple),
          textStyle: MaterialStateTextStyle.resolveWith(
            (states) => TextStyle(fontSize: 18),
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyText1: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        headline1: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
