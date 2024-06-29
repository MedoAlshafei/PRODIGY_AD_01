import 'package:flutter/material.dart';

const Color timberwolf = Color(0xFFD6D6D6);
const Color aureolin = Color(0xFFFFEE32);
const Color jonquil = Color(0xFFFFD100);
const Color eerieBlack = Color(0xFF202020);
const Color jet = Color(0xFF333533);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: jet,
  scaffoldBackgroundColor: timberwolf,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: jonquil,
      foregroundColor: Colors.black,
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: eerieBlack,
  scaffoldBackgroundColor: jet,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: jonquil,
      foregroundColor: Colors.black,
    ),
  ),
);
