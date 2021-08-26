
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/appbars/attendance_appbar.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {

  _CheckoutScreenState();

  String title1 = "برجاء وضع بصمتك \n لتأكيد حضورك\n للدوام";
  String title2 = "يرجي وضع البصمة الخاصة بالموظف وليس \n شخص اخر حتى نقوم بالتاكد من هوية المستخدم ";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: getAttendanceAppBar("تسجيل الإنصراف"),
          backgroundColor: Color(0xFF3949AB),
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppAssetsImage(getProportionateScreenHeight(125), getProportionateScreenWidth(100), "assets/images/white_fingerprint.png"),
                  Text(title1, style: TextStyle(color: Colors.white, fontSize: getProportionateText(28)),textAlign: TextAlign.center,),
                  Text(title2, style: TextStyle(color: Colors.white, fontSize: getProportionateText(16)),textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),

          bottomNavigationBar: BNB(),
        )
    );
  }
}
