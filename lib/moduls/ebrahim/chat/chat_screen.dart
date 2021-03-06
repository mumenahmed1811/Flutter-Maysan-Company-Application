import 'package:flutter/material.dart';
import 'package:flutter_demoui2/models/chat/chatMessageModel.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

import 'componentsChat/message.dart';


class ChatScreen_2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: getProportionateScreenHeight(65),
        title: Text(
          'طلبات الاجازة',
          style: TextStyle(
              color: AppColors.darkBlueFontColor,
              fontSize: getProportionateText(40),
              fontWeight: FontWeight.normal),
        ),
        backgroundColor: AppColors.yellow,
        centerTitle: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(
              Icons.menu,
              color: Colors.white,
              size: 40,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/ZWbv3h.png'),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: demeChatMessages.length,
                  itemBuilder: (context, index) => Message(
                        message: demeChatMessages[index],
                      )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BNB()
    );
  }

  
}
