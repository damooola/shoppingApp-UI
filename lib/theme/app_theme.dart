import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
    //background color
    scaffoldBackgroundColor: Colors.white,

    //icon theme
    iconTheme:
        const IconThemeData(color: Color.fromARGB(255, 64, 36, 120), size: 30),

    //text theme
    textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Color.fromARGB(255, 64, 36, 120),
            fontSize: 22,
            fontWeight: FontWeight.bold),
        displayMedium: TextStyle(
            color: Color.fromARGB(255, 64, 36, 120),
            fontSize: 17,
            fontWeight: FontWeight.bold),
        displaySmall: TextStyle(
            color: Color.fromARGB(255, 16, 0, 48),
            fontSize: 12,
            fontWeight: FontWeight.bold),
        labelMedium: TextStyle(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),

    //app bar theme
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 2,
        titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 64, 36, 120),
            fontSize: 24,
            fontWeight: FontWeight.bold),
        iconTheme:
            IconThemeData(color: Color.fromARGB(255, 64, 36, 120), size: 35)),

    //search bar theme
    searchBarTheme: const SearchBarThemeData(
      hintStyle: WidgetStatePropertyAll(
          TextStyle(fontSize: 15, color: Color.fromARGB(255, 60, 60, 60))),
      elevation: WidgetStatePropertyAll(5),
      backgroundColor: WidgetStatePropertyAll(Colors.white),
      padding: WidgetStatePropertyAll(EdgeInsets.fromLTRB(10, 5, 20, 5)),
    ),

    //elevated button style
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.white),
            textStyle: WidgetStatePropertyAll(
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(255, 64, 36, 120)))));
