
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.end,
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
                    contentPadding: EdgeInsets.zero,
                    hintTextDirection: TextDirection.rtl,
                    hintText: "اكتب رسالتك هنا",
                    hintStyle: TextStyle(color: Color(0xFF8A6F5F), ),
                    border: InputBorder.none,

                ),
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(10),),
            RoundImageButton(
                getProportionateScreenHeight(50),
                getProportionateScreenWidth(50),
                AppColors.darkBlueFontColor, "assets/images/chat_send_msg.png",
                getProportionateScreenHeight(20),
                getProportionateScreenWidth(20),
                Colors.white, 15)
          ],
        ),
      ),
    );
  }
}
