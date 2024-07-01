import 'package:flutter/material.dart';

const Color backroundGrey = Color.fromRGBO(230, 230, 230, 1);
const Color greenMain = Color.fromRGBO(49, 160, 98, 1);

const bool userLogedIn = false;

const double iconInputSize = 26;

const MaterialColor primaryGreen =
    MaterialColor(_primaryGreenPrimaryValue, <int, Color>{
  50: Color(0xFFE6F4EC),
  100: Color(0xFFC1E3D0),
  200: Color(0xFF98D0B1),
  300: Color(0xFF6FBD91),
  400: Color(0xFF50AE7A),
  500: Color(_primaryGreenPrimaryValue),
  600: Color(0xFF2C985A),
  700: Color(0xFF258E50),
  800: Color(0xFF1F8446),
  900: Color(0xFF137334),
});
const int _primaryGreenPrimaryValue = 0xFF31A062;

const MaterialColor primaryGreenAccent =
    MaterialColor(_primaryGreenAccentValue, <int, Color>{
  100: Color(0xFFA9FFC4),
  200: Color(_primaryGreenAccentValue),
  400: Color(0xFF43FF7D),
  700: Color(0xFF2AFF6B),
});
const int _primaryGreenAccentValue = 0xFF76FFA0;
