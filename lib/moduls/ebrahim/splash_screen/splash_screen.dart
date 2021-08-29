import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_demoui2/moduls/mumen/start/start_main.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => StartMain()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/images/logo.png',
              height: getProportionateScreenHeight(180),
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Text(
              'شركة ميسان المتحدة',
              style: TextStyle(
                  fontSize: getProportionateText(40),
                  fontWeight: FontWeight.normal,
                  height: getProportionateScreenHeight(1),
                  color: AppColors.whiteFontColor),
            ),
           
            Text(
              'Maysan United Company',
              style: TextStyle(
                  fontSize: getProportionateText(20),
                  fontWeight: FontWeight.normal,
                  height: getProportionateScreenHeight(1),
                  color: AppColors.whiteFontColor),
            ),
          ],
        ),
      ),
    );
  }
}
