
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/ebrahim/Requests%20(exit%20-%20resignation)/Requests_resignation_screen.dart';
import 'package:flutter_demoui2/moduls/ebrahim/Transfer_request/Transfer_request_screen.dart';
// ignore: unused_import
import 'package:flutter_demoui2/moduls/ebrahim/transfer_request_within_the_administration/transfer_request_within_the_administration_screen.dart';
import 'package:flutter_demoui2/moduls/ebrahim/vacation_requests/vacation_requests_screen.dart';
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
                        InkWell(child: Request("assets/images/target.png", "طلبات الإجازة", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),onTap: (){
                           Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => VacationRequestsScreen()));
                        },),
                        InkWell(child: Request("assets/images/choices.png", "طلبات (الخروج- الاستقالة)", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),onTap: (){
                          Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => RequestsResignationScreen()));
                        },),
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    Row(
                      textDirection: TextDirection.ltr,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(child: Request("assets/images/network.png", "طلبات عامة", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),onTap: (){
                           
                        },),
                        InkWell(child: Request("assets/images/chat_2.png", "طلبات النقل", getProportionateScreenHeight(50),getProportionateScreenWidth(50)),onTap: (){
                          Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => TransferRequestScreen()));
                        },),
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
