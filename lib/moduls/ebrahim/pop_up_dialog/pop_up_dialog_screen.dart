import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class PopUPDialogScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: MaterialButton(
              minWidth: 300,
              onPressed: (){       
  Alert(
      context: context,
    
      title: "حان موعد",
      image: Image.asset('assets/images/fingerprint3.png',height: 150,width: 150,),
      padding: EdgeInsets.zero,
      desc: "تسجيل الانصراف",
      style: AlertStyle(
      animationType: AnimationType.shrink,
      isOverlayTapDismiss: false,
     
      alertPadding: EdgeInsets.zero,
      buttonAreaPadding: EdgeInsets.zero,
      isCloseButton: false,
      backgroundColor: HexColor('#FFC14F').withOpacity(0.9),
      descStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:HexColor('#161D6F') ),
      descTextAlign: TextAlign.center,
   
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(
            color: Colors.white,
            width: 1.5
          ),
      ),
      overlayColor: Color(0x55000000).withOpacity(0.5),
      alertElevation: 0,
      constraints: BoxConstraints.expand(height: 300,width: 150),
      titleStyle: TextStyle(
        color:HexColor('#161D6F'),
        fontSize: 16,
        fontWeight: FontWeight.normal
      ),
      ),
      buttons: [
        DialogButton(
         radius: BorderRadius.circular(25),
          color:Colors.white ,
          child: Text(
            "سجل الانصراف",
            style: TextStyle(color: HexColor('#161D6F'), fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
              },
              color: Colors.white,
              child: Text('Dialog',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
        ),
      ),
      
    );
  }
}