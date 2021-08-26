import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData defaultTheme = ThemeData(
  primaryColor: HexColor('#3949AB'),
  // ignore: deprecated_member_use
  cursorColor: HexColor('#3949AB'),
 // accentColor: HexColor('#3949AB'),
  hintColor: HexColor('#3949AB'),
  fontFamily: 'ArbFONTS-4_AF',

  scaffoldBackgroundColor: HexColor('#3949AB'),
  appBarTheme: AppBarTheme(
    //titleSpacing: 20.0,
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.grey[300],
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
);
