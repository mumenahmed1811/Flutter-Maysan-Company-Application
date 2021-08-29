import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';


class ConfirmAttendanceScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/fingerprint.png',
              height: getProportionateScreenHeight(200),
            ),
            SizedBox(
              height: getProportionateScreenHeight(60),
            ),
            Text(
              'تم',
              style: TextStyle(
                  color: AppColors.whiteFontColor,
                  fontSize: getProportionateText(40),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Text(
              'تسجيل الانصراف',
              style: TextStyle(
                  color: AppColors.whiteFontColor,
                  fontSize: getProportionateText(50),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BNB(),
    );
  }

  
}
