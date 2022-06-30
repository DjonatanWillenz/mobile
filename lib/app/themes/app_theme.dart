import 'package:flutter/material.dart';

ThemeData appThemeData() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color.fromARGB(255, 74, 214, 105),
    //textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
    //    .apply(bodyColor: Colors.white),
    appBarTheme: AppBarTheme(
      backgroundColor: Color.fromARGB(255, 54, 231, 54),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Color.fromARGB(255, 120, 137, 235),
      colorScheme: ColorScheme(
        background: Color.fromARGB(255, 34, 42, 87),
        brightness: Brightness.dark,
        error: Color.fromARGB(255, 236, 33, 33),
        onBackground: Color.fromARGB(255, 236, 33, 33),
        onError: Color.fromARGB(255, 236, 33, 33),
        onPrimary: Color.fromARGB(255, 236, 33, 33),
        onSecondary: Color.fromARGB(255, 236, 33, 33),
        onSurface: Color.fromARGB(255, 236, 33, 33),
        primary: Color.fromARGB(255, 236, 33, 33),
        secondary: Color.fromARGB(255, 236, 33, 33),
        surface: Color.fromARGB(255, 236, 33, 33),
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    canvasColor: Color.fromARGB(255, 126, 143, 243),
    backgroundColor: Color.fromARGB(255, 78, 250, 35),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.cyanAccent),
  );
}
