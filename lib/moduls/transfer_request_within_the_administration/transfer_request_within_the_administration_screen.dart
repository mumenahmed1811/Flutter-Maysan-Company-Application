import 'package:flutter/material.dart';
import 'package:flutter_demoui2/shared/components/components.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class TransferRequestWithinTheAdministrationScreen extends StatelessWidget {
  
   TextEditingController transfernameController = TextEditingController();
   TextEditingController transferresidencynumberController = TextEditingController();
   TextEditingController transferrequesttypeController = TextEditingController();
   TextEditingController transferrequestreasonController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 65,
           title: Text('طلب نقل داخل ادارة',style: TextStyle(color:HexColor('#161D6F'),fontSize: 30,fontWeight: FontWeight.bold ),),
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
        child: SingleChildScrollView(
          
          child: Container(
           
            width: 350,
            height:550,
            decoration: BoxDecoration(
              color: HexColor('#FFC14F'),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  
                  children: [
                    Container(child: Text('طلب نقل داخل ادارة ',style: TextStyle(color:HexColor('#161D6F'),fontSize:30,height: 1),)),
                    SizedBox(height: 15,),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Padding(
                        padding: EdgeInsets.only(top:10,bottom:3,),
                        child: Text('اسم الموظف',style: TextStyle(color:HexColor('#161D6F'),fontSize:15,height: 1),),
                      ),
                      SizedBox(
                        height:50,
                        child: TextFormField(
                          controller: transfernameController,
                          keyboardType: TextInputType.name,
                          cursorColor: HexColor('#3949AB'),
                          obscureText: false,
                          style: TextStyle(height:1),
                          enabled: true,
                          onTap: () {},
                          decoration: InputDecoration(
                            hintText: 'بيانات الموظف',
                            hoverColor: HexColor('#3949AB'),
                            hintStyle: TextStyle(color: HexColor('#3949AB'),height: 1),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                               ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                               ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top:10,bottom:3,),
                        child: Text('الإدارة الحالية',style: TextStyle(color:HexColor('#161D6F'),fontSize:15,height: 1),),
                      ),
                      SizedBox(
                        height:50,
                        child: TextFormField(
                          controller: transferresidencynumberController,
                          keyboardType: TextInputType.name,
                          cursorColor: HexColor('#3949AB'),
                          style: TextStyle(height:1),
                          obscureText: false,
                          enabled: true,
                          onTap: () {},
                          decoration: InputDecoration(
                            hintText: 'إدارة ميسان المتحدة-الرياض',
                            hoverColor: HexColor('#3949AB'),
                            hintStyle: TextStyle(color: HexColor('#3949AB'),height: 1),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                               ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                               ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,bottom:3,),
                        child: Text('الإدارة المطلوبة',style: TextStyle(color:HexColor('#161D6F'),fontSize:15,height: 1),),
                      ),
                      SizedBox(
                        height:50,
                        child: TextFormField(
                          controller: transferrequesttypeController,
                          keyboardType: TextInputType.name,
                          cursorColor: HexColor('#3949AB'),
                          obscureText: false,
                          enabled: true,
                          style: TextStyle(height:1),
                          onTap: () {},
                          decoration: InputDecoration(
                            hintText: 'ادارة احمد الجهني - جدة',
                            hoverColor: HexColor('#3949AB'),
                            hintStyle: TextStyle(color: HexColor('#3949AB'),height: 1),
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                               ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                               ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10,bottom:3,),
                        child: Text('ســبــب الــطــلــب',style: TextStyle(color:HexColor('#161D6F'),fontSize:15,height: 1),),
                      ),
                      TextFormField(
                        controller: transferrequestreasonController,
                        keyboardType: TextInputType.name,
                        cursorColor: HexColor('#3949AB'),
                        obscureText: false,
                        enabled: true,
                        minLines: 4,
                        maxLines:4,
                        style: TextStyle(height:1),
                        onTap: () {},
                        decoration: InputDecoration(
                          hintText: 'سبب الطلب',
                          hoverColor: HexColor('#3949AB'),
                          hintStyle: TextStyle(color: HexColor('#3949AB'),),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                             ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(
                                width: 0,
                                color: Colors.white
                              )
                             ),
                        ),
                      ),
                      
                      SizedBox(height:10),
                  Center(
                    child: Container(
                      height:75,
                      child: ClipRRect(
                        borderRadius:BorderRadius.circular(35),
                        child: MaterialButton(
                          minWidth: 200,
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset('assets/images/Icons - Arrow - Arrowhead - Right.png'),
                              Text(
                                'تأكيد الطلب',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                          color: HexColor('#161D6F'),
                          height: 50,
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
      bottomNavigationBar:BNB(),
    );
  }
  
}