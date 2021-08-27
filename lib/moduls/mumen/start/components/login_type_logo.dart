import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';

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
          SizedBox(height: getProportionateScreenHeight(10),),
          Text(txt, style: TextStyle(fontSize: getProportionateText(20), height: 1),)
        ],
      ),
    );
  }
}