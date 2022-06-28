import 'package:flutter/material.dart';

final ThemeData appThemeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Color(0xFF212332),
  //textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
  //    .apply(bodyColor: Colors.white),

  visualDensity: VisualDensity.adaptivePlatformDensity,
  canvasColor: Color(0xFF2A2D3E),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.cyanAccent),
);
