import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/ebrahim/splash_screen/splash_screen.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


// ignore: unused_import
import 'moduls/mumen/chat/chat_screen.dart';
// ignore: unused_import
import 'moduls/mumen/working_team/working_team_screen.dart';

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
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SplashScreen();
  }
}

