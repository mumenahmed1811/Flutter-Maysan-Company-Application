
import 'package:flutter/material.dart';

import '../size_config.dart';
import 'image.dart';

class IncomingCallLerLogo extends StatelessWidget {
  IncomingCallLerLogo(this.dir);

  String dir;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: getProportionateScreenHeight(250),
      width: getProportionateScreenWidth(250),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF4554B0),
      ),

      child: Container(
        padding: EdgeInsets.all(10),
        height: getProportionateScreenHeight(200),
        width: getProportionateScreenWidth(200),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF636FBD),
        ),
        child: CircularUnborderImage(getProportionateScreenHeight(150), getProportionateScreenWidth(150), dir),
      )

      ,
    );
  }
}

class VoiceCallButton extends StatelessWidget {

  IconData icon;
  Color buttonColor;
  Color iconColor;

  VoiceCallButton(this.icon, this.buttonColor, this.iconColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      width: SizeConfig.screenWidth*0.15,
      height: SizeConfig.screenHeight*0.1,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: buttonColor,
          child: Icon(icon, color: iconColor,),
          onPressed: () {},
        ),
      ),
    );
  }
}