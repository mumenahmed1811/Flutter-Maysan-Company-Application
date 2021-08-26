
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

class QueryScreenApproval extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: Text(
          'طلبات الاجازة',
          style: TextStyle(
              color: HexColor('#161D6F'),
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: HexColor('#FFC14F'),
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
      body: Center(
        child: Container(
          width: 270,
          height: 280,
          decoration: BoxDecoration(
              color: HexColor('#FFC14F').withOpacity(0.9),
              borderRadius: BorderRadius.circular(35),
              border: Border.all(color: Colors.white,width: 3)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  'assets/images/Path 11609.png',
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'تم استلام طلبكم',
                style: TextStyle(
                    color: HexColor('#161D6F'),
                    fontSize: 35,
                     height: 1,
                     wordSpacing: 2,
                    fontWeight: FontWeight.normal),
              ),
             SizedBox(height: 15,),
              Text(
                'رقم الطلب',
                style: TextStyle(
                    color: HexColor('#161D6F'),
                    fontSize: 35,
                     height: 1,
                    fontWeight: FontWeight.normal),
              ),
             SizedBox(height: 10,),
              Text(
               '12345',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                     height: 1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text(
               ' برجاء الاحتفاظ برقم الطلب',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                     height: 1,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BNB(),
    );
  } 
}
