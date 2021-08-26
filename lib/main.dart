import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/styles/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// ignore: unused_import
import 'moduls/Requests (exit - resignation)/Requests_resignation_screen.dart';
// ignore: unused_import
import 'moduls/Transfer_request/Transfer_request_screen.dart';
// ignore: unused_import
import 'moduls/login&register/login_screen.dart';
// ignore: unused_import
import 'moduls/vacation_requests/vacation_requests_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
      ],
      locale: Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: RequestsResignationScreen(),
    );
  }
}
