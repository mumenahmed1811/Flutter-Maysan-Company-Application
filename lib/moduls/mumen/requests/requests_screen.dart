
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/appbars/titled_only_app_bar.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/components/views/request.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

class RequestsScreen extends StatefulWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: TitledOnlyAppBar("الطلبات"),
          backgroundColor: AppColors.bgColor,
          body: Center(
            child: Container(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
                width: SizeConfig.screenWidth*0.85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Request("assets/images/target.png", "المهام", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),
                        Request("assets/images/choices.png", "الطلبات", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Request("assets/images/network.png", "فريق العمل", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),
                        Request("assets/images/chat_2.png", "سجل الدردشات", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),
                      ],
                    ),
                  ],
                )
            ),
          ),
          bottomNavigationBar: BNB(),

      )
    );
  }
}
