
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

import '../size_config.dart';

getChatppBar(BuildContext context){

  return AppBar(
    backgroundColor: AppColors.yellow,
    centerTitle: true,
    title: Text("الدردشة", style: TextStyle(color: AppColors.darkBlueFontColor, fontSize: getProportionateText(35)),),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(getProportionateScreenHeight(100)),
      child: Container(
        width: SizeConfig.screenWidth*0.9,
        child: Column(
          children: [
            Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  textDirection: TextDirection.ltr,
                  children: [
                    VoiceCallBtn("assets/images/white_call.png"),
                    SizedBox(width: SizeConfig.screenWidth*0.05,),
                    VideoCallBtn("assets/images/white_video.png")
                  ],
                ),
                EmployeeImage("assets/images/ana.jpg", "اسم الموظف", false)
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(30),)
          ],
        ),
      ),
    ),
    actions: [Icon(Icons.menu, color: Colors.white, size: getProportionateText(40),)],
    //leading: ,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
    ),
  );
}

// ignore: must_be_immutable
class EmployeeImage extends StatelessWidget {

  EmployeeImage(this.dir, this.title, this.status);
  String dir;
  String title;
  bool status;

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      children: [
        Column(
          children: [
            Text(title, style: TextStyle(color: AppColors.darkBlueFontColor, fontSize: getProportionateText(13), height: 1),),
            SizedBox(height: getProportionateScreenHeight(5),),
            Text(
              status? "اون لاين" : "اوفلاين",
              style: TextStyle(color: Colors.red, fontSize: getProportionateText(13), height: 1),
            ),
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.05,),
        RoundedUnborderedImage(getProportionateScreenHeight(50), getProportionateScreenWidth(50), 20, dir)
      ],
    );
  }
}

// ignore: must_be_immutable
class VoiceCallBtn extends StatelessWidget {
  VoiceCallBtn(this.dir);

  String dir;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(45),
      width: getProportionateScreenWidth(45),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFCF9F55)
      ),
      child: Center(
        child: AppAssetsImage(
            getProportionateScreenHeight(25),
            getProportionateScreenWidth(25),
            dir
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class VideoCallBtn extends StatelessWidget {
  VideoCallBtn(this.dir);

  String dir;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(45),
      width: getProportionateScreenWidth(45),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFCF9F55)
      ),
      child: Center(
        child: AppAssetsImage(
            getProportionateScreenHeight(20),
            getProportionateScreenWidth(25),
            dir
        ),
      ),
    );
  }
}
