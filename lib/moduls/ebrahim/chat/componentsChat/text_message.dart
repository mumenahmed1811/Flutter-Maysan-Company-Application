import 'package:flutter/material.dart';
import 'package:flutter_demoui2/models/chat/chatMessageModel.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';


class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
  }) : super(key: key);
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          message.isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 5),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
              color:
                  message.isSender ? AppColors.yellow: AppColors.darkBlueFontColor,
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            message.text,
            style: TextStyle(
                color: message.isSender ? AppColors.bgColor: AppColors.whiteFontColor,
                height: getProportionateScreenHeight(1.5),
                fontSize: getProportionateText(15)),
          ),
        ),
        Container(
          child: Row(
            children: [
              if (!message.isSender)
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Image.asset('assets/images/Group 71.png'),
                ),
              SizedBox(
                width: getProportionateScreenWidth(3),
              ),
              Padding(
                padding: const EdgeInsets.only(left:5,right: 5),
                child: Text(
                  'PM14:26 الامس',
                  style: TextStyle(
                      color: AppColors.yellow, height: getProportionateScreenHeight(1), fontSize: getProportionateText(10)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
