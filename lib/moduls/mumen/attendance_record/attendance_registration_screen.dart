
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/mumen/attendance_record_success/attendance_record_success_Screen.dart';
import 'package:flutter_demoui2/shared/components/appbars/attendance_appbar.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';


class AttendanceRecordScreen extends StatefulWidget {
  const AttendanceRecordScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceRecordScreen> createState() => _AttendanceRecordScreenState();
}

class _AttendanceRecordScreenState extends State<AttendanceRecordScreen> {

  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => AttendanceRecordSuccessScreen()));
  //   });
  // }
  String title1 = "برجاء وضع بصمتك \n لتأكيد حضورك\n للدوام";
  String title2 = "يرجي وضع البصمة الخاصة بالموظف وليس \n شخص اخر حتى نقوم بالتاكد من هوية المستخدم ";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: getAttendanceAppBar("تسجيل الحضور"),
          backgroundColor: Color(0xFF3949AB),
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppAssetsImage(getProportionateScreenHeight(125), getProportionateScreenWidth(100), "assets/images/white_fingerprint.png"),
                  SizedBox(height: getProportionateScreenHeight(45),),
                  Text(title1, style: TextStyle(color: Colors.white, fontSize: getProportionateText(33), fontWeight: FontWeight.w500, height: 1.25),textAlign: TextAlign.center,),
                  SizedBox(height: getProportionateScreenHeight(15),),
                  Text(title2, style: TextStyle(color: Colors.white, fontSize: getProportionateText(16), height: 1.24),textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),

          bottomNavigationBar: BNB(),
    )
    );
  }
}
