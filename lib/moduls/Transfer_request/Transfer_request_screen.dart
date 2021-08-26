
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class TransferRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          toolbarHeight: 65,
           title: Text('طلب نقل',style: TextStyle(color:HexColor('#161D6F'),fontSize: 30,fontWeight: FontWeight.bold ),),
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
           
                GetItem( textTop: 'طلب نقل داخل ادارة', textBottom: 'يمكنك التقدم من هنا لطلب النقل الي إدارة اخري',),
                GetItem( textTop: 'طلب نقل داخل مشروع', textBottom: 'يمكنك طلب نقل داخل مشروع الي مشروع',),
                
                
            ],
          ),
        ),
      ), 
      bottomNavigationBar: BNB(),
    );
  }

   
}