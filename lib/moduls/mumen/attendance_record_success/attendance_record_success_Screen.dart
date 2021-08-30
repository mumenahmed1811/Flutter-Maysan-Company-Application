
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';

class AttendanceRecordSuccessScreen extends StatefulWidget {
  const AttendanceRecordSuccessScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceRecordSuccessScreen> createState() => _AttendanceRecordSuccessScreenState();
}

class _AttendanceRecordSuccessScreenState extends State<AttendanceRecordSuccessScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF3949AB),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.only(left: getProportionateScreenWidth(50)),
                    child: AppAssetsImage(getProportionateScreenHeight(275), getProportionateScreenWidth(265), "assets/images/white_yellow_fingerprint.png")
                ),
                SizedBox(height: getProportionateScreenHeight(40),),
                Text("تم", style: TextStyle(color: Colors.white, fontSize: getProportionateText(28), height: 1),),
                SizedBox(height: getProportionateScreenHeight(20),),
                Text("تسجيل الحضور", style: TextStyle(color: Colors.white, fontSize: getProportionateText(45), height: 1) ,)
              ],
            ),
          ),
        ),
        bottomNavigationBar: BNB(),
      ),
    );
  }
}
