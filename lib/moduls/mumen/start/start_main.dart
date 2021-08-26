// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

class StartMain extends StatelessWidget {
  const StartMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(75)),
                child: AppAssetsImage(getProportionateScreenHeight(350), SizeConfig.screenWidth, "assets/images/logo.png"),
            ),
            Stack(

              children: [
                //White background
                AppAssetsImage(getProportionateScreenHeight(200), SizeConfig.screenWidth, "assets/images/Path 1.png"),
                // ignore: prefer_const_constructors

                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("اإختر نوعية الوظيفة الخاصة بك", style: TextStyle(fontSize: getProportionateText(25)),),
                        SizedBox(height: getProportionateScreenHeight(10),),
                        Container(
                          height: getProportionateScreenHeight(125),
                          width: SizeConfig.screenWidth * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LoginTypeLogo("assets/images/edara.png", "الإدارة", (){}),
                              LoginTypeLogo("assets/images/3omla2.png", "العملاء", (){}),
                              LoginTypeLogo("assets/images/3amlen.png", "العاملين", (){}),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
class LoginTypeLogo extends StatelessWidget {

  String imgDir;
  String txt;
  VoidCallback fun;

  LoginTypeLogo(this.imgDir, this.txt, this.fun);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(125),
      width: getProportionateScreenWidth(75),
      child: Column(
        children: [
          InkWell(
            child: AppAssetsImage(getProportionateScreenHeight(75), getProportionateScreenWidth(75), imgDir),
            onTap: fun,
          ),
          Text(txt, style: TextStyle(fontSize: getProportionateText(20)),)
        ],
      ),
    );
  }
}

