import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/ebrahim/annual_leave_request/annual_leave_request_screen.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

// ignore: must_be_immutable
class VacationRequestsScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight:getProportionateScreenHeight(65),
           title: Text('طلبات الاجازة',style: TextStyle(color:AppColors.darkBlueFontColor,fontSize: getProportionateText(30),fontWeight: FontWeight.bold),),
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
                GetItem(textTop: 'طلب إجازة سنوية', textBottom: 'يمكنك التقدم من هنا لطلب إجازة سنوية',fun: (){
                  Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => AnnualLeaveRequestScreen()));
                }),
                GetItem(textTop: 'طلب إجازة اضطرارية', textBottom: 'يمكنك التقدم من هنا لطلب إجازة اضطرارية',fun: (){}),
                GetItem(textTop: 'طلب إجازة مرضـيــة', textBottom: 'يمكنك التقدم من هنا لطلب إجازة مرضية',fun: (){}),
                
                
            ],
          ),
        ),
      ), 
      bottomNavigationBar: BNB(),
    );
  }

   
}