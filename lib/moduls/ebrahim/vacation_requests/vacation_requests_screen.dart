import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class VacationRequestsScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 65,
           title: Text('طلبات الاجازة',style: TextStyle(color:HexColor('#161D6F'),fontSize: 40,fontWeight: FontWeight.normal ),),
           backgroundColor: HexColor('#FFC14F'),
           centerTitle: true,
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))),
           actions: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(Icons.menu, color: Colors.white, size: 40,),
              ),
           ],
         ),      
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                GetItem(textTop: 'طلب إجازة سنوية', textBottom: 'يمكنك التقدم من هنا لطلب إجازة سنوية'),
                GetItem(textTop: 'طلب إجازة اضطرارية', textBottom: 'يمكنك التقدم من هنا لطلب إجازة اضطرارية'),
                GetItem(textTop: 'طلب إجازة مرضـيــة', textBottom: 'يمكنك التقدم من هنا لطلب إجازة مرضية'),
                
                
            ],
          ),
        ),
      ), 
      bottomNavigationBar: BNB(),
    );
  }

   
}