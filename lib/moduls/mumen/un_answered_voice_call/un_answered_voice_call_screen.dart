
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/image.dart';

class UnAnsweredVoiceCallCsreen extends StatefulWidget {
  const UnAnsweredVoiceCallCsreen({Key? key}) : super(key: key);

  @override
  State<UnAnsweredVoiceCallCsreen> createState() => _UnAnsweredVoiceCallCsreenState();
}

class _UnAnsweredVoiceCallCsreenState extends State<UnAnsweredVoiceCallCsreen> {

  String txt1 = "مازن مصطفي";
  String txt2 = "لم يرد علي مكالمتك";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3949AB),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularUnborderImage(getProportionateScreenHeight(150), getProportionateScreenWidth(150), "assets/images/random_man.png"),
              Text(txt1, style: TextStyle(color: Color(0xFFFFC14F), fontSize: getProportionateText(28)),),
              Text(txt2, style: TextStyle(color: Colors.white, fontSize: getProportionateText(18)),),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BNB(),

    );
  }
}
