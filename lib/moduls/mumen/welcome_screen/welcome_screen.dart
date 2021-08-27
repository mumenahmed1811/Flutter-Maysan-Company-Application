
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/mumen/home/home.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/button.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppAssetsImage(getProportionateScreenHeight(150), getProportionateScreenWidth(150) , "assets/images/arabMan.png"),
                  SizedBox(height: getProportionateScreenHeight(15),),
                  Text(
                    "مرحباً\n بك",
                    style: TextStyle(color: AppColors.whiteFontColor, fontSize: getProportionateText(35), fontWeight: FontWeight.bold, height: 1),
                    textAlign: TextAlign.center,
                  ),
                  Text("اسم الموظف", style: TextStyle(color: AppColors.whiteFontColor, fontSize: getProportionateText(22), fontWeight: FontWeight.bold),textAlign: TextAlign.center, ),
                  Text(
                      "يمكنك الانتقال الي صفحتك\n لمتابعة اعمالك",
                      style: TextStyle(color: AppColors.whiteFontColor, fontSize: getProportionateText(18), ),
                      textAlign: TextAlign.center
                  ),
                  AppTextButton(getProportionateScreenHeight(50), SizeConfig.screenWidth*0.7 , 20,  "الإنتقال لبدأ مهام عملي", getProportionateText(17), ()
                  {
                    Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
                  })

                ],
            )
        ),
      ),
    );
  }
}
