import 'package:dropdown_below/dropdown_below.dart';
import 'package:flutter/material.dart';

import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';


// ignore: must_be_immutable
class RequestsResignationScreen extends StatefulWidget {
  

  @override
  _RequestsResignationScreenState createState() => _RequestsResignationScreenState();
}

class _RequestsResignationScreenState extends State<RequestsResignationScreen> {
   TextEditingController nameController = TextEditingController();

   TextEditingController residencynumberController = TextEditingController();

   TextEditingController requesttypeController = TextEditingController();

   TextEditingController requestreasonController = TextEditingController();
  var value = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight:getProportionateScreenHeight(65),
           title: Text('طلبات (الخروج- الاستقالة)',style: TextStyle(color:AppColors.darkBlueFontColor,fontSize: getProportionateText(30),fontWeight: FontWeight.bold ),),
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
        child: SingleChildScrollView(
          
          child: Container(
           
            width:getProportionateScreenWidth(350),
            height:getProportionateScreenHeight(600),
            decoration: BoxDecoration(
              color: AppColors.yellow,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                physics:BouncingScrollPhysics(),
                child: Column(
                  
                  children: [
                    Container(child: Text('التقدم لطلب ',style: TextStyle(color:AppColors.darkBlueFontColor,fontSize:getProportionateText(30),height: getProportionateScreenHeight(1)),)),
                    SizedBox(height: getProportionateScreenHeight(15),),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 3,
                            ),
                            child: Text(
                              'اسم الموظف',
                              style: TextStyle(
                                  color: AppColors.darkBlueFontColor,
                                  fontSize: getProportionateText(15),
                                  height: getProportionateScreenHeight(1)),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(50),
                            child: TextFormField(
                              controller: nameController,
                              keyboardType: TextInputType.name,
                              cursorColor: AppColors.darkBlueFontColor,
                              obscureText: false,
                              style: TextStyle(height: getProportionateScreenHeight(1)),
                              enabled: true,
                              onTap: () {},
                              decoration: InputDecoration(
                                hintText: 'بيانات الموظف',
                                hoverColor: AppColors.bgColor,
                                hintStyle: TextStyle(
                                    color: AppColors.bgColor,height: getProportionateScreenHeight(0.4)),
                                fillColor: AppColors.whiteFontColor,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width: getProportionateScreenWidth(0), color: AppColors.whiteFontColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width:getProportionateScreenWidth(0), color: AppColors.whiteFontColor)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 3,
                            ),
                            child: Text(
                              'رقم الأقامة',
                              style: TextStyle(
                                  color: AppColors.darkBlueFontColor,
                                  fontSize: getProportionateText(15),
                                  height: getProportionateScreenHeight(1)),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(50),
                            child: TextFormField(
                              controller: residencynumberController,
                              keyboardType: TextInputType.name,
                              cursorColor: AppColors.darkBlueFontColor,
                              style: TextStyle(height: getProportionateScreenHeight(1)),
                              obscureText: false,
                              enabled: true,
                              onTap: () {},
                              decoration: InputDecoration(
                                hintText: 'رقم الأقامة',
                                hoverColor: AppColors.bgColor,
                                hintStyle: TextStyle(
                                    color: AppColors.bgColor, height: getProportionateScreenHeight(0.4)),
                                fillColor: AppColors.whiteFontColor,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width: getProportionateScreenWidth(0), color: AppColors.whiteFontColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width:  getProportionateScreenWidth(0), color: AppColors.whiteFontColor)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 3,
                            ),
                            child: Text(
                              'نوع الطلب',
                              style: TextStyle(
                                  color:AppColors.darkBlueFontColor,
                                  fontSize: getProportionateText(15),
                                  height: getProportionateScreenHeight(1)),
                            ),
                          ),
                          Container(
                            width: getProportionateScreenWidth(500),
                            height: getProportionateScreenHeight(55),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColors.whiteFontColor),
                            child: DropdownBelow(
                              itemWidth:
                                  MediaQuery.of(context).size.width * 0.895,
                              itemTextstyle: TextStyle(
                                   height: getProportionateScreenHeight(1.5),
                                   fontSize: 16,
                                   fontFamily: 'ArbFONTS-4_AF',
                                  color:AppColors.bgColor),
                              boxTextstyle: TextStyle(
                                  height: getProportionateScreenHeight(1.5),
                                  
                                   fontFamily: 'ArbFONTS-4_AF',
                                  color: AppColors.bgColor),
                              boxPadding: EdgeInsets.fromLTRB(13, 15, 5, 10),
                              boxHeight: getProportionateScreenHeight(45),
                              boxWidth:
                                  MediaQuery.of(context).size.width * 0.895,
                              hint: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Text("سليكت لنوع الطلب",
                                    style: TextStyle(
                                      fontSize: 16,
                                        color: AppColors.bgColor, height: getProportionateScreenHeight(0.4),fontWeight: FontWeight.normal,)),
                              ),
                              icon: Image.asset('assets/images/Path 11639.png'),
                              value: value,
                              items: [
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text("سليكت لنوع الطلب",
                                        style: TextStyle(
                                          fontSize: 16,
                                            color: AppColors.bgColor,
                                            fontWeight: FontWeight.normal,
                                            height: getProportionateScreenHeight(0.4))),
                                  ),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text(
                                      "سليكت لنوع الطلب",
                                      style: TextStyle(
                                        fontSize: 16,
                                          color: AppColors.bgColor,
                                          fontWeight: FontWeight.normal,
                                          height: getProportionateScreenHeight(0.4)),
                                    ),
                                  ),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text(
                                      "سليكت لنوع الطلب",
                                      style: TextStyle(
                                        fontSize: 16,
                                          color: AppColors.bgColor,
                                          fontWeight: FontWeight.normal,
                                          height: getProportionateScreenHeight(0.4)),
                                    ),
                                  ),
                                  value: 3,
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 8),
                                    child: Text(
                                      "سليكت لنوع الطلب",
                                      style: TextStyle(
                                        fontSize: 16,
                                          color: AppColors.bgColor,
                                          fontWeight: FontWeight.normal,
                                          height: getProportionateScreenHeight(0.4)),
                                    ),
                                  ),
                                  value: 4,
                                )
                              ],
                              onChanged: (var index) {
                                setState(() {
                                  value = index!;
                                });
                              },
                            ),
                          ),
                      Padding(
                        padding: EdgeInsets.only(top:10,bottom:3,),
                        child: Text('ســبــب الــطــلــب',style: TextStyle(color:AppColors.darkBlueFontColor,fontSize:getProportionateText(15),height:getProportionateScreenHeight(1)),),
                      ),
                      TextFormField(
                        controller: requestreasonController,
                        keyboardType: TextInputType.name,
                        cursorColor: AppColors.bgColor,
                        obscureText: false,
                        style: TextStyle(height:getProportionateScreenHeight(1)),
                        enabled: true,
                        minLines: 6,
                        maxLines:6,
                        onTap: () {},
                        decoration: InputDecoration(
                          hintText: 'سبب الطلب',
                          
                          hoverColor: AppColors.bgColor,
                          hintStyle: TextStyle(color: AppColors.bgColor,height: getProportionateScreenHeight(1)),
                          fillColor: AppColors.whiteFontColor,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: getProportionateScreenWidth(0),
                                color: AppColors.whiteFontColor
                              )
                             ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: getProportionateScreenWidth(0),
                                color: AppColors.whiteFontColor
                              )
                             ),
                        ),
                      ),
                       SizedBox(height: getProportionateScreenHeight(42)),
                  Center(
                    child: Container(
                      height:getProportionateScreenHeight(75),
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(35),
                        child: MaterialButton(
                          minWidth: getProportionateScreenWidth(200),
                          onPressed: () {
                             pop_up_approval(context).show();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/Icons - Arrow - Arrowhead - Right.png'),
                              Text(
                                'تأكيد الطلب',
                                style: TextStyle(
                                    color:AppColors.whiteFontColor,
                                    fontSize: getProportionateText(20),
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          color: AppColors.darkBlueFontColor,
                          height: getProportionateScreenHeight(50),
                        ),
                      ),
                    ),
                  ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
           
          ),
        ),
      ),
      bottomNavigationBar: BNB(),
    );
  }
}