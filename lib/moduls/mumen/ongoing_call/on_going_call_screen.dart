
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/voice_calls.dart';

class OnGoingCallScreen extends StatefulWidget {
  const OnGoingCallScreen({Key? key}) : super(key: key);

  @override
  _OnGoingCallScreenState createState() => _OnGoingCallScreenState();
}

class _OnGoingCallScreenState extends State<OnGoingCallScreen> {
  String txt1 = "مكالمة مع";
  String txt2 = "مازن مصطفي";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3949AB),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IncomingCallLerLogo("assets/images/random_man.png"),
              Text(txt1, style: TextStyle(color: Colors.white, fontSize: getProportionateText(8)),),
              Text(txt2, style: TextStyle(color: Color(0xFFFFC14F), fontSize: getProportionateText(18)),),
              Text("50:04 ", style: TextStyle(color: Colors.white, fontSize: getProportionateText(18)),),
              Container(
                width: SizeConfig.screenWidth*0.6,
                child: Row(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      VoiceCallButton(Icons.mic, Color(0xFFFFC14F), Colors.black),
                      VoiceCallButton(Icons.pause, Color(0xFFFFC14F), Colors.black),
                      VoiceCallButton(Icons.multitrack_audio, Color(0xFFFFC14F), Colors.black)
                  ],
                ),
              ),
              VoiceCallButton(Icons.call, Colors.red, Colors.black),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BNB(),

    );
  }
}
