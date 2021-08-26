import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

class QueryScreenRejection extends StatelessWidget {
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
          width: 260,
          height: 260,
          decoration: BoxDecoration(
              color: HexColor('#FFC14F').withOpacity(0.9),
              borderRadius: BorderRadius.circular(35),
              border: Border.all(color: Colors.white, width: 3)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor:HexColor('#3949AB') ,
                  
                  child:Image.asset('assets/images/Path 11638.png'),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'عفواً',
                style: TextStyle(
                    color: HexColor('#161D6F'),
                    height: 1,
                    fontSize: 30,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 10,),
              Text(
                'لايستحق هذا الموظف',
                style: TextStyle(
                    height: 1,
                    color: HexColor('#161D6F'),
                    fontSize: 30,
                    fontWeight: FontWeight.normal,)
              ),
              SizedBox(height: 10,),
              Text(
                'التقدم لطلب اجازة',
                style: TextStyle(
                    height: 1,
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 10,),
              Text(
                'الرجاء المحاولة في الوقت المخصص لك',
                style: TextStyle(
                  height: 1,
                    color: Colors.white,
                    fontSize: 15,
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
