
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
      padding: EdgeInsets.all( getProportionateScreenHeight(20)),
      height: getProportionateScreenHeight(180),
      width: getProportionateScreenWidth(150),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF5F6F9)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Text(title, style: TextStyle(color: Color(0xFF161D6F), fontSize: getProportionateText(18), height: 1), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
