
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
                        Request("assets/images/target.png", "طلبات الخروج - الإستقالة", getProportionateScreenHeight(90),getProportionateScreenWidth(95)),
                        Request("assets/images/choices.png", "طلبات الأجازة", getProportionateScreenHeight(100),getProportionateScreenWidth(70)),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(10),),
                    Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Request("assets/images/target.png", "طلبات عامة", getProportionateScreenHeight(90),getProportionateScreenWidth(95)),
                        Request("assets/images/target.png", "طلبات النقل", getProportionateScreenHeight(90),getProportionateScreenWidth(95)),
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
