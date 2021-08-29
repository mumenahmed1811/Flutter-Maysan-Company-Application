import 'package:dropdown_below/dropdown_below.dart';

import 'package:flutter/material.dart';


import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';


// ignore: must_be_immutable
class AnnualLeaveRequestScreen extends StatefulWidget {
  @override
  _AnnualLeaveRequestScreenState createState() =>
      _AnnualLeaveRequestScreenState();
}

class _AnnualLeaveRequestScreenState extends State<AnnualLeaveRequestScreen> {
  TextEditingController transfernameController = TextEditingController();

  TextEditingController transferresidencynumberController =
      TextEditingController();

  TextEditingController transferrequesttypeController = TextEditingController();

  TextEditingController transferrequestreasonController =
      TextEditingController();

  var value = null;

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: getProportionateScreenHeight(65),
        title: Text(
          'طلب إجازة سنوية',
          style: TextStyle(
              color: AppColors.darkBlueFontColor,
              fontSize: getProportionateText(30),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.yellow,
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
              color: AppColors.whiteFontColor,
              size: 40,
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: getProportionateScreenWidth(350),
            height:getProportionateScreenHeight(552), 
            decoration: BoxDecoration(
                color: AppColors.yellow,
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                        child: Text(
                      'طلب نقل داخل ادارة ',
                      style: TextStyle(
                          color: AppColors.darkBlueFontColor ,fontSize: getProportionateText(30), height: getProportionateScreenHeight(1)),
                    )),
                    SizedBox(
                      height: getProportionateScreenHeight(15),
                    ),
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
                              controller: transfernameController,
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
                              'الإدارة الحالية',
                              style: TextStyle(
                                  color: AppColors.darkBlueFontColor,
                                  fontSize: getProportionateText(15),
                                  height: getProportionateScreenHeight(1)),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(50),
                            child: TextFormField(
                              controller: transferresidencynumberController,
                              keyboardType: TextInputType.name,
                              cursorColor: AppColors.darkBlueFontColor,
                              style: TextStyle(height: getProportionateScreenHeight(1)),
                              obscureText: false,
                              enabled: true,
                              onTap: () {},
                              decoration: InputDecoration(
                                hintText: 'إدارة ميسان المتحدة-الرياض',
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
                              'نوع الاجازة',
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
                                child: Text("سليكت أنواع الاجازات",
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
                                    child: Text("سليكت أنواع الاجازات",
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
                                      "سليكت أنواع الاجازات",
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
                                      "سليكت أنواع الاجازات",
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
                                      "سليكت أنواع الاجازات",
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
                            padding: const EdgeInsets.only(
                              top: 12,
                              bottom: 3,
                            ),
                            child: Text(
                              'تاريخ الاجازة من .....الي',
                              style: TextStyle(
                                  color: AppColors.darkBlueFontColor,
                                  fontSize: getProportionateText(15),
                                  height: getProportionateScreenHeight(1)),
                            ),
                          ),
                          SizedBox(
                           height: getProportionateScreenHeight(50),
                            child: TextFormField(
                              controller: transferrequestreasonController,
                              keyboardType: TextInputType.name,
                              cursorColor: AppColors.bgColor,
                              obscureText: false,
                              enabled: true,
                              style: TextStyle(height: getProportionateScreenHeight(1)),
                              onTap: () async {
                                FocusScope.of(context)
                                    .requestFocus(new FocusNode());
                                final DateTime? picked = await showDatePicker(
                                    context: context,
                                    initialDate: selectedDate,
                                    firstDate: DateTime(2015, 8),
                                    lastDate: DateTime(2101),
                                    initialEntryMode: DatePickerEntryMode.calendar,
                                    useRootNavigator : false,
                                    textDirection:TextDirection.rtl,
                                    
                                    );

                                // ignore: unnecessary_null_comparison
                                if (picked != null && picked != selectedDate)
                                  setState(() {
                                    selectedDate = picked;
                                    transferrequestreasonController.text =
                                        picked.toIso8601String();
                                  });
                              },
                              decoration: InputDecoration(
                                hintText: '10 ايام',
                                hoverColor:AppColors.bgColor,
                                hintStyle: TextStyle(
                                  color: AppColors.bgColor,
                                  height: getProportionateScreenHeight(0.4)
                                ),
                                fillColor: AppColors.whiteFontColor,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width: getProportionateScreenWidth(0), color: AppColors.whiteFontColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        width: getProportionateScreenWidth(0), color: AppColors.whiteFontColor)),
                              ),
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(42)),
                          Center(
                            child: Container(
                              height: getProportionateScreenHeight(75),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: MaterialButton(
                                  minWidth:getProportionateScreenWidth(200),
                                  onPressed: () {
                                     pop_up_approval(context).show();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                          'assets/images/Icons - Arrow - Arrowhead - Right.png'),
                                      Text(
                                        'تأكيد الطلب',
                                        style: TextStyle(
                                            color: AppColors.whiteFontColor,
                                            fontSize: getProportionateText(20),
                                            wordSpacing: 2,
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

class CalendarDateRangePickerWidget {}
