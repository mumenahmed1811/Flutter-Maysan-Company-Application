import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';


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
              height: 200,
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'تم',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'تسجيل الانصراف',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BNB(),
    );
  }

  
}
