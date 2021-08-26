import 'dart:ffi';

import 'package:flutter/material.dart';


import 'button.dart';
import 'image.dart';

class AttendanceLeavingItem extends StatelessWidget {
  AttendanceLeavingItem(this.desc, this.btnText, this.fun);

  String desc;
  String btnText;
  dynamic fun;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.18,
      width: SizeConfig.screenWidth * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFFFC14F)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppAssetsImage(getProportionateScreenHeight(40), getProportionateScreenWidth(40), "assets/blue_fingerprint.png"),
          Text(desc, style: TextStyle(color: Color(0xFF161D6F), fontSize: 15), textAlign: TextAlign.center,),
          AppTextButton(getProportionateScreenHeight(30), getProportionateScreenWidth(120), 20, btnText, getProportionateText(8), fun)
        ],
      ),
    );
  }
}
