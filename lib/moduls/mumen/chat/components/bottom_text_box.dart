
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/button.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

class BottomTextBox extends StatelessWidget {
  const BottomTextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight*0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
            color: AppColors.yellow
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          textDirection: TextDirection.ltr,
          children: [
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Icon(Icons.camera_alt_outlined, color: AppColors.darkBlueFontColor, size: getProportionateText(28), ),
                Icon(Icons.add_circle_outlined, color: AppColors.darkBlueFontColor, size: getProportionateText(28), ),
                Icon(Icons.image, color: AppColors.darkBlueFontColor, size: getProportionateText(28), ),
                Icon(Icons.mic, color: AppColors.darkBlueFontColor, size: getProportionateText(28), )
              ],
            ),
            SizedBox(width: getProportionateScreenWidth(10),),
            Expanded(
              child: TextField(
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                    hintTextDirection: TextDirection.rtl,
                    hintText: "اكتب رسالتك هنا",
                    hintStyle: TextStyle(color: Color(0xFF8A6F5F)),
                    border: InputBorder.none
                ),
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(10),),
            RoundIconButton(
                SizeConfig.screenHeight*0.07,
                SizeConfig.screenWidth*0.18,
                AppColors.darkBlueFontColor, Icons.send,
                SizeConfig.screenHeight*0.05,
                SizeConfig.screenWidth*0.05,
                Colors.white, 20)
          ],
        ),
      ),
    );
  }
}
