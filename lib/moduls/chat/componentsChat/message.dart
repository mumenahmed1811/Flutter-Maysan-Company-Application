import 'package:flutter/material.dart';
import 'package:flutter_demoui2/models/chat/chatMessageModel.dart';
import 'package:flutter_demoui2/moduls/chat/componentsChat/audio_message.dart';
import 'package:flutter_demoui2/moduls/chat/componentsChat/text_message.dart';


class Message extends StatelessWidget {
  const Message({
    Key? key,
    required this.message,
  }) : super(key: key);

  final ChatMessage message;
  Widget messageContaint(ChatMessage message) {
    switch (message.messageType) {
      case ChatMessageType.text:
        return TextMessage(message: message);
        // ignore: dead_code
        break;
      case ChatMessageType.audio:
        return AudioMessage(
          message: message,
        );
        // ignore: dead_code
        break;
      default:
        return SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: !message.isSender
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 9,right: 20,left: 10),
                    child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),//add border radius here
                    child: Image.asset(
                      'assets/images/male.png',
                      height: 35,
                      width: 35,
                    ),//add image location here
                    ),
                  ),
                ],
                messageContaint(message),
              ],
            )
          : Row(
             crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                messageContaint(message),
                SizedBox(width: 10,),
                ...[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 9,right: 4,left: 20),
                    child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),//add border radius here
                    child: Image.asset(
                      'assets/images/Photo.jpg',
                      height: 30,
                      width: 30,
                    ),//add image location here
                    ),
                  ),
                  
                ],
              ],
            ),
    );
  }
}



