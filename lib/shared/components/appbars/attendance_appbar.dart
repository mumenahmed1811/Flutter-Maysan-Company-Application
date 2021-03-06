
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';


getAttendanceAppBar(String appbarTitle){

  return AppBar(
    backgroundColor: Color(0xFFFFC14F),
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(getProportionateScreenHeight(160)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppAssetsImage(getProportionateScreenHeight(100), getProportionateScreenWidth(100), "assets/images/fingerprint_2.png"),
          Text(appbarTitle, style: TextStyle(color: Color(0xFF161D6F), fontSize: getProportionateText(28)),),
          SizedBox(height: getProportionateScreenHeight(10),)
        ],
      ),
    ),
    actions: [
      Icon(Icons.menu, color: Colors.white, size: getProportionateText(38),)
    ],
    //leading: ,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
    ),
  );
}

