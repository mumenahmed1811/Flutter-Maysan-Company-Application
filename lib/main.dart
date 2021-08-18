import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hexcolor/hexcolor.dart';

import 'moduls/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: HexColor('#3949AB'),
        // ignore: deprecated_member_use
        cursorColor: HexColor('#3949AB'),
        accentColor: HexColor('#3949AB'),
        hintColor: HexColor('#3949AB'),

        scaffoldBackgroundColor: HexColor('#3949AB'),
        appBarTheme: AppBarTheme(
          titleSpacing: 20.0,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.grey[500],
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
