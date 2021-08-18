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
        child: Container(
          height: 700,
          alignment: AlignmentDirectional.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo here
              Image.asset(
                'assets/images/logo.png',
                height: 120,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'شركة ميسان المتحدة',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#FFFFFF')),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Maysan United Company',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#FFFFFF')),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 350,
                child: TextFormField(
                  controller: userNameController,
                  keyboardType: TextInputType.name,
                  cursorColor: HexColor('#3949AB'),
                  obscureText: false,
                  enabled: true,
                  onTap: () {},
                  decoration: InputDecoration(
                    labelText: 'بيانات دخول الموظف',
                    labelStyle: TextStyle(color: HexColor('#3949AB')),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.person,
                      color: HexColor('#3949AB'),
                    ),
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
                height: 20,
              ),
              Container(
                width: 350,
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: false,
                  enabled: true,
                  onTap: () {},
                  decoration: InputDecoration(
                    labelText: 'كلمة المرور',
                    labelStyle: TextStyle(color: HexColor('#3949AB')),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.lock,
                      color: HexColor('#3949AB'),
                    ),
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
                height: 30,
              ),
              Container(
                width: 150,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(25)),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'دخول',
                    style: TextStyle(
                        color: HexColor('#3949AB'),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.white,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
