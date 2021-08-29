import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/ebrahim/confirm_attendance/confirm_attendance_screen.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';


class CheckOutScreen extends StatefulWidget {

  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => ConfirmAttendanceScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
    backgroundColor: AppColors.yellow,
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(160),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/fingerprint1.png',height: 100,width: 100,),
          Text('تسجيل الانصراف', style: TextStyle(color: Color(0xFF161D6F), fontSize: 30,fontWeight:FontWeight.bold)),
          SizedBox(height: 10,)
        ],
      ),
    ),
    actions:[
      Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Icon(Icons.menu, color: Colors.white, size: 40,),
      ),
    ] ,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
    ),
      ),
      body:SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
           alignment: Alignment.topCenter,
            child: Column(
              
              children:[
                Image.asset('assets/images/fingerprint4.png',height: getProportionateScreenHeight(120),),
                SizedBox(height: getProportionateScreenHeight(50),),
                Text('برجاء ضع بصمتك لتاكيد الانصراف من الدوام',style: TextStyle(fontSize: getProportionateText(35),fontWeight: FontWeight.bold,color: AppColors.whiteFontColor),textAlign: TextAlign.center,maxLines: 3,), 
                SizedBox(height: 15,), 
                Text('يرجي وضع البصمة الخاصة بالموظف وليس شخص اخر حتى نقوم بالتاكد من هوية المستخدم ',style: TextStyle(fontSize: getProportionateText(17),fontWeight: FontWeight.bold,color:AppColors.whiteFontColor),maxLines: 3,), 
          
              ]
            ),
          ),
        ),
      ),
      bottomNavigationBar: BNB(),
    );
  }
}
