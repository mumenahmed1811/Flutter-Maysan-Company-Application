
import 'package:flutter/material.dart';

import '../size_config.dart';


class Request extends StatelessWidget {
  Request( this.iconDir, this.title, this.imageHeight , this.imageWidth);

  String iconDir;
  String title;

  double imageWidth;
  double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: getProportionateScreenHeight(10)),
      height: SizeConfig.screenHeight * 0.2,
      width: SizeConfig.screenWidth * 0.4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF5F6F9)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: imageHeight,
            width: imageWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(iconDir),
                fit: BoxFit.fill
              )
            ),
          ),
          Text(title, style: TextStyle(color: Color(0xFF161D6F), fontSize: getProportionateText(22)), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
