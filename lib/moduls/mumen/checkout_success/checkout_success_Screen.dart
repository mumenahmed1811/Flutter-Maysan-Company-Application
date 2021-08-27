
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';

class CheckoutSuccessScreen extends StatefulWidget {
  const CheckoutSuccessScreen({Key? key}) : super(key: key);

  @override
  _CheckoutSuccessScreenState createState() => _CheckoutSuccessScreenState();
}

class _CheckoutSuccessScreenState extends State<CheckoutSuccessScreen> {


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
                AppAssetsImage(getProportionateScreenHeight(150), getProportionateScreenWidth(150), "assets/images/white_yellow_fingerprint.png"),
                SizedBox(height: getProportionateScreenHeight(20),),
                Text("تم", style: TextStyle(color: Colors.white, fontSize: getProportionateText(18)),),
                Text("تسجيل الإنصراف", style: TextStyle(color: Colors.white, fontSize: getProportionateText(28)) ,)
              ],
            ),
          ),
        ),
        bottomNavigationBar: BNB(),
      ),
    );
  }
}
