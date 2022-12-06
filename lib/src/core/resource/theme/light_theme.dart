import 'package:flutter/material.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';

final appLightTheme = ThemeData(
  backgroundColor: const Color(0xFFF8F7FA),
  fontFamily: 'Inter',
  scaffoldBackgroundColor: const Color(0xFFF8F7FA),
  primaryColor: const Color.fromARGB(255, 18, 54, 109),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 18, 54, 109),
    titleSpacing: kDefaultPadding,
    elevation: 2,
    titleTextStyle: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 20,
    ),
    iconTheme: IconThemeData(color: Colors.black),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor:
          MaterialStateProperty.all(const Color.fromARGB(255, 18, 54, 109)),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
);
