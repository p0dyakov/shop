import 'package:flutter/material.dart';
import 'package:shop/src/core/resource/theme/sizes.dart';

final appLightTheme = ThemeData(
  backgroundColor: const Color.fromARGB(255, 249, 249, 249),
  fontFamily: 'Inter',
  scaffoldBackgroundColor: const Color.fromARGB(255, 249, 249, 249),
  primaryColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    titleSpacing: kDefaultPadding,
    elevation: 2,
    titleTextStyle: TextStyle(
      color: Color.fromARGB(255, 255, 255, 255),
      fontSize: 20,
    ),
    iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(Colors.black),
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
