
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

class FingerprintVerificationScreen extends StatelessWidget {
  const FingerprintVerificationScreen({Key? key}) : super(key: key);

  final String txt1 = "برجاء وضع بصمتك\n للتأكد من هوية\n المستخدم";
  final String txt2 = "براجاء وضع البصمة الخاصة بالمستخدم و ليس\n شخص آخر للتأكد من هوية المستخدم";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppAssetsImage(getProportionateScreenHeight(150), getProportionateScreenWidth(150), "assets/images/Touch-id.png"),
              Text(txt1, style: TextStyle(fontSize: getProportionateText(30), color: Colors.white),textAlign: TextAlign.center,),
              Text(txt2, style: TextStyle(fontSize: getProportionateText(15), color: Colors.white),textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}
