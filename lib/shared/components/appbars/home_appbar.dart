import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';

import '../size_config.dart';

getHomeAppBar(){
  String appbarTitle = "هلا وسهلا بك اسم الموظف \n تاريخ اليوم \n الثلاثاء 18/11/1999";
  return AppBar(
    backgroundColor: Color(0xFF161D6F),
    actions: [
      Icon(Icons.menu, color: Colors.white, size: getProportionateText(40),)

    ],
    centerTitle: true,
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(getProportionateScreenHeight(160)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(appbarTitle, style: TextStyle(color: Colors.white, fontSize: getProportionateText(18), height: 1), textAlign: TextAlign.center,),
          AttendanceTimeWidget(),
          SizedBox(height: getProportionateScreenHeight(10),)
        ],
      ),
    ),
    leading: Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
      child: CircularBorderImage(getProportionateScreenHeight(10), getProportionateScreenWidth(50), Colors.white, getProportionateScreenWidth(2.0), "assets/images/arabMan.png"),
    ),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
    ),
  );
}

class AttendanceTimeWidget extends StatelessWidget {
  const AttendanceTimeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(85),
      width: SizeConfig.screenWidth*0.95,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFFFFC14F)
      ),
      child: Row(
        textDirection: TextDirection.ltr,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width:getProportionateScreenWidth(3)),
          Container(
            height: getProportionateScreenHeight(80),
            width: SizeConfig.screenWidth*0.56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Color(0xFF161D6F)
            ),
            child: Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("موعد الإنصراف", style: TextStyle(color: Color(0xFFFFC14F), fontSize: getProportionateText(20)), ),
                    Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("مساء", style: TextStyle(color: Colors.white, fontSize: getProportionateText(15), height: 1)),
                        Text("10:00", style: TextStyle(color: Colors.white, fontSize: getProportionateText(20), height: 1))
                      ],
                    )
                  ],
                ),
                SizedBox(width: getProportionateScreenWidth(10),),
                AppAssetsImage(getProportionateScreenHeight(20), getProportionateScreenWidth(20), "assets/images/left_arrows.png")
              ],
            ),
          ),
          SizedBox(width:getProportionateScreenWidth(30)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("موعد الحضور", style: TextStyle(color: Color(0xFF161D6F), fontSize: getProportionateText(20)), ),
              Row(
                textDirection: TextDirection.ltr,
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text("صباحاً", style: TextStyle(color: Colors.white, fontSize: getProportionateText(15), height: 1)),
                  Text("10:00", style: TextStyle(color: Colors.white, fontSize: getProportionateText(20), height: 1))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}