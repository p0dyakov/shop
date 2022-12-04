import 'package:flutter/material.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';

final appLightTheme = ThemeData(
  backgroundColor: const Color(0xFFF8F7FA),
  fontFamily: 'Inter',
  scaffoldBackgroundColor: const Color(0xFFF8F7FA),
  primaryColor: const Color.fromARGB(255, 38, 45, 240),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    titleSpacing: kDefaultPadding,
    elevation: 2,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
    iconTheme: IconThemeData(color: Colors.black),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.white),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
);
