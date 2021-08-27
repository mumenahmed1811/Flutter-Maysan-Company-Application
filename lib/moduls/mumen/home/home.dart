import 'dart:ui';



import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/ebrahim/check_out/check_out_screen.dart';
// ignore: unused_import
import 'package:flutter_demoui2/moduls/ebrahim/confirm_attendance/confirm_attendance_screen.dart';
import 'package:flutter_demoui2/moduls/mumen/attendance_record/attendance_registration_screen.dart';
import 'package:flutter_demoui2/moduls/mumen/requests/requests_screen.dart';
import 'package:flutter_demoui2/moduls/mumen/working_team/working_team_screen.dart';
import 'package:flutter_demoui2/shared/components/appbars/home_appbar.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/button.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';
import 'package:flutter_demoui2/shared/components/views/request.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  AppBar? appbar ;



  @override
  Widget build(BuildContext context) {

    appbar = getHomeAppBar();

    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFF3949AB),
          appBar: appbar,
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
                margin: EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
                width: SizeConfig.screenWidth*0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: SizeConfig.screenHeight * 0.2,
                          width: SizeConfig.screenWidth * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFFC14F)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppAssetsImage(getProportionateScreenHeight(40), getProportionateScreenWidth(40), "assets/images/blue_fingerprint.png"),
                              Text("سجل إنصرافك الان عن طريق التبصيم", style: TextStyle(color: Color(0xFF161D6F), fontSize: getProportionateText(13)), textAlign: TextAlign.center,),
                              Container(
                                  width: getProportionateScreenWidth(120),
                                  height: getProportionateScreenHeight(40),
                                  child: TextButton(
                                      onPressed: (){showCheckoutDialog(context, "تسجيل الإنصراف",(){
                                        Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(builder: (_) => CheckOutScreen()));
                                      });},
                                      child: Center(child: Text("تسجيل الإنصراف", style: TextStyle(color: AppColors.bgColor, fontSize: getProportionateText(10)))),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)
                                          )
                                      )
                                  )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: SizeConfig.screenHeight * 0.2,
                          width: SizeConfig.screenWidth * 0.4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFFC14F)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppAssetsImage(getProportionateScreenHeight(40), getProportionateScreenWidth(40), "assets/images/blue_fingerprint.png"),
                              Text("سجل حضورك الان عن طريق التبصيم", style: TextStyle(color: Color(0xFF161D6F), fontSize: getProportionateText(13)), textAlign: TextAlign.center,),
                              Container(
                                  width: getProportionateScreenWidth(120),
                                  height: getProportionateScreenHeight(40),
                                  child: TextButton(
                                      onPressed: (){showCheckoutDialog(context, "تسجيل الحضور",(){
                                        Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(builder: (_) => AttendanceRecordScreen()));
                                      });},
                                      child: Center(child: Text("تسجيل الحضور", style: TextStyle(color: AppColors.bgColor, fontSize: getProportionateText(10)))),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20)
                                          )
                                      )
                                  )
                              ),
                            ],
                          ),
                        ),

                        // AttendanceLeavingItem(
                        //          "سجل حضورك الان عن طريق التبصيم",
                        //          "تسجيل الحضور",
                        //           showCheckoutDialog(context, "تسجيل الإنصراف")
                        //         ),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(child: Request("assets/images/target.png", "المهام", getProportionateScreenHeight(52),getProportionateScreenWidth(68),),onTap: (){},),
                        InkWell(child: Request("assets/images/choices.png", "الطلبات",  getProportionateScreenHeight(65),getProportionateScreenWidth(50)),onTap: (){
                          Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(builder: (_) => RequestsScreen()));
                        },),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(child: Request("assets/images/network.png", "فريق العمل", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),onTap: (){
                          Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(builder: (_) => WorkingTeamScreen()));
                        },),
                        InkWell(child: Request("assets/images/chat_2.png", "سجل الدردشات", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),onTap: (){},),
                      ],
                    ),
                  ],
                )
              ),
            ),
          ),
          bottomNavigationBar: BNB(),
        ),

    );
  }
}

showCheckoutDialog(BuildContext context1, String title,VoidCallback fun){
  print(title);
  showDialog(context: context1, builder: (BuildContext context){
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.white, width: getProportionateScreenWidth(5.0))
          ),
      
          backgroundColor: Color(0xFFFFC14F),
          child: Container(
            height: getProportionateScreenHeight(350),
            width: getProportionateScreenWidth(200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppAssetsImage(getProportionateScreenHeight(150), getProportionateScreenWidth(150), "assets/images/fingerprint_2.png"),
                Text("حان موعد"),
                Text(title),
                AppTextButton(getProportionateScreenHeight(40), getProportionateScreenWidth(150), 20, title, getProportionateText(16), 
                    fun
                )
              ],
            ),
          ),
        )
    );
  });
}


