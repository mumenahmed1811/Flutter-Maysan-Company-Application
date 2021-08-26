
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/voice_calls.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

class IncomingCallScreen extends StatelessWidget {

  const IncomingCallScreen({Key? key}) : super(key: key);
  final String txt1 = "...إتصال وارد";
  final String txt2 = "مازن مصطفي";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.bgColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(txt1, style: TextStyle(color: Colors.white, fontSize: getProportionateText(13)),),
                Text(txt2, style: TextStyle(color: Color(0xFFFFC14F), fontSize: getProportionateText(28)),),
                IncomingCallLerLogo("assets/images/random_man.png"),
                Container(
                  width: SizeConfig.screenWidth*0.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VoiceCallButton(Icons.call, Color(0xFFFFC14F), Color(0xFF161D6F)),
                      VoiceCallButton(Icons.cancel_sharp, Color(0xFF161D6F), Colors.white)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}


