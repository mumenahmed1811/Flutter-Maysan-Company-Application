import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class GetItem extends StatelessWidget {
  final String textTop;
  final String textBottom;
  final VoidCallback fun;
  const GetItem({
    Key? key,
    required this.textTop,
    required this.textBottom,
    required this.fun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fun,
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 5, bottom: 5),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          borderOnForeground: true,
          color: HexColor('#FFFFFF'),
          child: Container(
            height: 55,
            width: 400,
            child: Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/avatar.png'),
                ),
                Spacer(),
                Center(
                  child: Container(
                    width: 250,
                    child: Column(
                      children: [
                        Text(
                          textTop,
                          style: TextStyle(color: HexColor('#161D6F')),
                        ),
                        Text(textBottom,
                            style: TextStyle(
                              color: HexColor('#585858'),
                              height: 1,
                            )),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/choices.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BNB extends StatefulWidget {
  @override
  _BNBState createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: HexColor('#FFC14F'), spreadRadius: 3),
        ],
      ),
      child: ConvexAppBar(
        height: 70,
        style: TabStyle.reactCircle,
        items: [
          TabItem(
              icon: Image.asset('assets/images/Group 16249.png'),
              title: 'الاشعارات'),
          TabItem(
              icon: Image.asset('assets/images/chat.png'), title: 'الرسائل'),
          TabItem(
              icon: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.asset(
                  'assets/images/logo.png',
                ),
              ),
              title: 'الرئيسه'),
          TabItem(
              icon: Image.asset('assets/images/community.png'),
              title: 'مساعدة'),
          TabItem(
              icon: Image.asset('assets/images/user.png'), title: 'البرفايل'),
        ],
        initialActiveIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: HexColor('#161D6F'),
        activeColor: HexColor('#3949AB'),
        color: Colors.white,
        curveSize: 3,
      ),
    );
  }
}

Alert pop_up_approval(BuildContext context) {
  return Alert(
    context: context,

    //title: "حان موعد",
    image: Image.asset(
      'assets/images/Path 11609.png',
      height: getProportionateScreenHeight(100),
      width: getProportionateScreenWidth(100),
    ),
    padding: EdgeInsets.zero,
   content: Column(
      children: <Widget>[
        Text(
          'تم استلام طلبكم',
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 35,
              color: HexColor('#161D6F'),
              height: 1.5,
              wordSpacing: 2),
        ),
        Text(
          'رقم الطلب',
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 35,
              color: HexColor('#161D6F'),
              height: 1.5,
              wordSpacing: 2),
        ),
        Text(
          '12345',
          style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 35,
        color: Colors.white,
      ),
        ),
        Text(
          'برجاء الاحتفاظ برقم الطلب',
          style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 20,
        color: Colors.white,
      ),
        ),
        
      ],
    ),
    style: AlertStyle(
      animationType: AnimationType.shrink,
      isOverlayTapDismiss: false,
      alertPadding: EdgeInsets.zero,
      buttonAreaPadding: EdgeInsets.zero,
      isCloseButton: false,
      
      backgroundColor: HexColor('#FFC14F').withOpacity(0.9),
     
      descTextAlign: TextAlign.center,
      isButtonVisible: false,
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(color: Colors.white, width: 1.5),
      ),
      overlayColor: Color(0x55000000).withOpacity(0.5),
      alertElevation: 0,
     
      
    ),
  );
}

Alert pop_up_rejection(BuildContext context) {
  return Alert(
    context: context,
    image: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 50,
        backgroundColor: HexColor('#3949AB'),
        child: Image.asset('assets/images/Path 11638.png'),
      ),
    ),
    padding: EdgeInsets.zero,
    content: Column(
      children: <Widget>[
        Text(
          'عفواً',
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 30,
              color: HexColor('#161D6F'),
              height: 1.5,
              wordSpacing: 2),
        ),
        Text(
          'لايستحق هذا الموظف',
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 30,
              color: HexColor('#161D6F'),
              height: 1.5,
              wordSpacing: 2),
        ),
        Text(
          'التقدم لطلب اجازة',
          style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 30,
        color: Colors.white,
      ),
        ),
        Text(
          'الرجاء المحاولة في الوقت المخصص لك',
          style: TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: 17,
        color: Colors.white,
      ),
        ),
        
      ],
    ),
    style: AlertStyle(
      animationType: AnimationType.shrink,
      isOverlayTapDismiss: false,
      alertPadding: EdgeInsets.zero,
      buttonAreaPadding: EdgeInsets.zero,
      isCloseButton: false,
      backgroundColor: HexColor('#FFC14F').withOpacity(0.9),
     
      
      isButtonVisible: false,
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(color: Colors.white, width: 1.5),
      ),
      overlayColor: Color(0x55000000).withOpacity(0.5),
      alertElevation: 0,
      
    ),
  );
}
