
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

class AppTextButton extends StatelessWidget {
  double height;
  double width;
  double radius;
  String txt;
  double fontSize;
  dynamic  fun;

  AppTextButton(this.height, this.width, this.radius, this.txt, this.fontSize, this.fun);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height, // with a font size more than 16 this height can't be less than 50 with text height 2
      child: TextButton(
          onPressed: (){fun;},
          child: Center(child: Text(txt, style: TextStyle(color: AppColors.bgColor, fontSize: fontSize, height: 2), )),
          style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius)
              )

          )
      )
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.btnHeight, this.btnWidth, this.btnColor, this.icon, this.iconHeight, this.iconWidth, this.iconColor, this.radius);
  double btnHeight;
  double btnWidth;
  Color btnColor;
  IconData icon;
  double iconHeight;
  double iconWidth;
  Color iconColor;
  double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: btnHeight,
      width: btnWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: btnColor
      ),
      child: InkWell(
        splashColor: Colors.blue,
        //borderRadius: BorderRadius.circular(25.0),
        child: SizedBox(width: iconWidth, height: iconHeight, child: Icon(icon, color: iconColor,),)
      ),
    );
  }
}

