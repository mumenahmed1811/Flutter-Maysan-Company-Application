import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/mumen/home/home.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/themes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';



// ignore: unused_import
import 'moduls/ebrahim/Requests (exit - resignation)/Requests_resignation_screen.dart';

// ignore: unused_import
import 'moduls/ebrahim/check_out/check_out_screen.dart';

import 'moduls/ebrahim/splash_screen/splash_screen.dart';
import 'moduls/mumen/attendance_record/attendance_registration_screen.dart';
import 'moduls/mumen/attendance_record_success/attendance_record_success_Screen.dart';
import 'moduls/mumen/chat/chat_screen.dart';
import 'moduls/mumen/checkout/checkout_screen.dart';
import 'moduls/mumen/checkout_success/checkout_success_Screen.dart';
import 'moduls/mumen/fingetprint_verification/fingerprint_verification.dart';
import 'moduls/mumen/incoming_call/incoming_call_screen.dart';
import 'moduls/mumen/ongoing_call/on_going_call_screen.dart';
import 'moduls/mumen/requests/requests_screen.dart';
import 'moduls/mumen/start/start_main.dart';
import 'moduls/mumen/un_answered_voice_call/un_answered_voice_call_screen.dart';
import 'moduls/mumen/welcome_screen/welcome_screen.dart';
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
    return ChatScreen();
  }
}

