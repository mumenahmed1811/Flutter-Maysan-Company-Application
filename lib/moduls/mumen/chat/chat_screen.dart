
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demoui2/models/chat/chatMessageModel.dart';
import 'package:flutter_demoui2/moduls/ebrahim/chat/componentsChat/message.dart';
import 'package:flutter_demoui2/moduls/mumen/incoming_call/incoming_call_screen.dart';
import 'package:flutter_demoui2/shared/components/appbars/chat_appbar.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

import 'components/bottom_text_box.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  // @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3), () {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => IncomingCallScreen()));
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: getChatppBar(context),
        extendBodyBehindAppBar: true,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: AppColors.bgColor,
            image: DecorationImage(
              image: AssetImage("assets/images/chat_background.png"),
              colorFilter: new ColorFilter.mode(AppColors.bgColor.withOpacity(0.6), BlendMode.dstOut),
              fit: BoxFit.cover,

            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: demeChatMessages.length,
                    itemBuilder: (context, index) => Message(
                      message: demeChatMessages[index],
                    )),
              ),
              BottomTextBox(),
              SizedBox(height: 20,)
            ],
          ),
        ),

        bottomNavigationBar: BNB(),
      ),
    );
  }
}
