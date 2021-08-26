import 'package:flutter/material.dart';
import 'package:flutter_demoui2/models/chat/chatMessageModel.dart';
import 'package:hexcolor/hexcolor.dart';

class AudioMessage extends StatelessWidget {
  final ChatMessage message;

  const AudioMessage({Key? key, required this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment:
            message.isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
       
            width: MediaQuery.of(context).size.width * 0.63,
            height: 57,
           
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: HexColor('#FFC14F')),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "01:24",
                  style: TextStyle(fontSize: 12, color: HexColor('#14195D')),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset('assets/images/Group 69.png'),
                SizedBox(
                  width: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset('assets/images/Group 68.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'PM14:26 الامس',
                style: TextStyle(
                    color: HexColor('#FFC14F'), height: 1, fontSize: 10),
              ),
              SizedBox(
                width: 3,
              ),
              if (!message.isSender)
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Image.asset('assets/images/Group 71.png'),
                )
            ],
          ),
        ],
      ),
    );
  }
}
