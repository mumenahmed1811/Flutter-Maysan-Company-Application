import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {

  
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            width: double.infinity,
            height: 750,
            alignment: AlignmentDirectional.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo here
                Image.asset(
                  'assets/images/logo.png',
                  height: 130,
                  
                  //fit: BoxFit.cover,
                ),
               
                Text(
                  'شركة ميسان المتحدة',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#FFFFFF')),
                ),
                
                Text(
                  'Maysan United Company',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#FFFFFF')),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 700,
                  height: 75,
                  child: TextFormField(
                    controller: userNameController,
                    keyboardType: TextInputType.name,
                    cursorColor: HexColor('#3949AB'),
                    obscureText: false,
                    style: TextStyle(
                      height: 1.5
                    ),
                    textAlign: TextAlign.center,
                    enabled: true,
                    onTap: () {},
                    decoration: InputDecoration(
                      
                      
                      
                      hintText: 'بيانات دخول الموظف',
                      
                     
                      hintStyle:TextStyle(color: HexColor('#3949AB')),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Image.asset('assets/images/user1.png',height: 24,width:24),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: HexColor('#3949AB'), width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: HexColor('#3949AB'), width: 1)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 700,
                  height: 75,
                  child: TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: false,
                    textAlign: TextAlign.center,
                    enabled: true,
                    style: TextStyle(
                      height: 1.5
                    ),
                    onTap: () {},
                    decoration: InputDecoration(
                      hintText: 'كلمة المرور',
                      
                      hintStyle:TextStyle(
                        color: HexColor('#3949AB'),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Image.asset('assets/images/eye.png',height: 24,width:24),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: HexColor('#3949AB'), width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: HexColor('#3949AB'), width: 1)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                 
                  height:50,
              
                  child: ClipRRect(
                    borderRadius:BorderRadius.circular(10),
                    child: MaterialButton(
                      minWidth: 150,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(top:3),
                        child: Text(
                          'دخول',
                          style: TextStyle(
                              color: HexColor('#3949AB'),
                              fontSize: 27,
                              height: 1,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      color: Colors.white,
      
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
