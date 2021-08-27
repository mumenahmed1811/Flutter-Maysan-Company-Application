import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetItem extends StatelessWidget {
  final String textTop;
  final String textBottom;
  final VoidCallback fun;
  const GetItem({
    Key? key,
    required this.textTop,
    required this.textBottom, required this.fun,
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
