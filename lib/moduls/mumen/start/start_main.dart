// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/ebrahim/login/login_screen.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

import 'components/login_type_logo.dart';

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
                child: AppAssetsImage(getProportionateScreenHeight(350), SizeConfig.screenWidth * 0.9, "assets/images/logo.png"),
            ),
            Stack(

              children: [
                //White background
                AppAssetsImage(getProportionateScreenHeight(220), SizeConfig.screenWidth, "assets/images/Path 1.png"),
                // ignore: duplicate_ignore
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
                            textDirection: TextDirection.ltr,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              LoginTypeLogo("assets/images/edara.png", "الإدارة", (){ Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));}),
                              LoginTypeLogo("assets/images/3omla2.png", "العملاء", (){ Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));}),
                              LoginTypeLogo("assets/images/3amlen.png", "العاملين", (){ Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));}),
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


