import 'package:flutter/material.dart';
import 'package:flutter_demoui2/models/chat/chatMessageModel.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

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
            height: getProportionateScreenHeight(57),
           
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.yellow),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "01:24",
                  style: TextStyle(fontSize: getProportionateText(12), color: AppColors.timedata),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Image.asset('assets/images/Group 69.png'),
                SizedBox(
                  width: getProportionateScreenWidth(3),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset('assets/images/Group 68.png'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'PM14:26 الامس',
                style: TextStyle(
                    color: AppColors.yellow, height:getProportionateScreenHeight(1), fontSize: getProportionateText(10)),
              ),
              SizedBox(
                width:getProportionateScreenWidth(3),
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
