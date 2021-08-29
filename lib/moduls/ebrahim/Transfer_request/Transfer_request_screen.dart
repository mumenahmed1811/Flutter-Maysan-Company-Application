
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/ebrahim/transfer_request_within_the_administration/transfer_request_within_the_administration_screen.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';


// ignore: must_be_immutable
class TransferRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          toolbarHeight: getProportionateScreenHeight(65),
           title: Text('طلب نقل',style: TextStyle(color:AppColors.darkBlueFontColor,fontSize: getProportionateText(30),fontWeight: FontWeight.bold ),),
           backgroundColor: AppColors.yellow,
           centerTitle: true,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
           actions: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(Icons.menu, color: AppColors.whiteFontColor, size: 40,),
              ),
           ],
         ),      
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           
                GetItem( textTop: 'طلب نقل داخل ادارة', textBottom: 'يمكنك التقدم من هنا لطلب النقل الي إدارة اخري',fun: (){
                  Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => TransferRequestWithinTheAdministrationScreen()));
                },),
                GetItem( textTop: 'طلب نقل داخل مشروع', textBottom: 'يمكنك طلب نقل داخل مشروع الي مشروع',fun: (){},),
                
                
            ],
          ),
        ),
      ), 
      bottomNavigationBar: BNB(),
    );
  }

   
}