
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/mumen/chat/chat_screen.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

// ignore: must_be_immutable
class EmployeeItem extends StatelessWidget {
  EmployeeItem(this.employeeName, this.emplyeeRole);

  String employeeName;
  String emplyeeRole;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:getProportionateScreenHeight(10)),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
      ),

      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textDirection: TextDirection.ltr,
          children: [
            Row(
              textDirection: TextDirection.ltr,
              children: [
                EmployeeItemBtn("assets/images/yellow_chat.png", "مراسلة", (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ChatScreen()));}),
                SizedBox(width: getProportionateScreenWidth(10),),
                EmployeeItemBtn("assets/images/yellow_phone_call.png", "مكالمة", (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ChatScreen()));}),
                SizedBox(width: getProportionateScreenWidth(10),),
                EmployeeItemBtn("assets/images/yellow_community.png", "مساعدة", (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ChatScreen()));})
              ],
            ),
            Expanded(
              child: Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(employeeName, style: TextStyle(color: AppColors.darkBlueFontColor, fontSize: getProportionateText(13)),),
                      Text(emplyeeRole, style: TextStyle(color: AppColors.darkBlueFontColor, fontSize: getProportionateText(13)),)
                    ],
                  ),
                  SizedBox(width: getProportionateScreenWidth(10),),
                  RoundedUnborderedImage(SizeConfig.screenHeight*0.07, SizeConfig.screenWidth*0.15, 10, "assets/images/random_employee.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class EmployeeItemBtn extends StatelessWidget {

  EmployeeItemBtn(this.dir, this.title, this.fun);
  String dir;
  String title;
  VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: fun,
            child: AppAssetsImage(getProportionateScreenHeight(50), SizeConfig.screenWidth*0.1, dir)),
        Text(title, style: TextStyle(color: AppColors.darkBlueFontColor, fontSize: getProportionateText(13)),)
      ],
    );
  }
}
