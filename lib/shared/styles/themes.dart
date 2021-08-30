import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData defaultTheme = ThemeData(
  primaryColor: HexColor('#3949AB'),
  // ignore: deprecated_member_use
  cursorColor: HexColor('#3949AB'),
 // accentColor: HexColor('#3949AB'),
  hintColor: HexColor('#3949AB'),
  fontFamily: 'ArbFont',

  scaffoldBackgroundColor: HexColor('#3949AB'),
  appBarTheme: AppBarTheme(
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xFFFFC14F).withOpacity(0.5),
      statusBarIconBrightness: Brightness.light,
    ),
  ),
);
