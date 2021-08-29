import 'package:flutter/material.dart';
import 'package:flutter_demoui2/moduls/mumen/fingetprint_verification/fingerprint_verification.dart';
import 'package:flutter_demoui2/shared/components/size_config.dart';
import 'package:flutter_demoui2/shared/styles/colors.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Container(
            width: double.infinity,
            height: getProportionateScreenHeight(750),
            alignment: AlignmentDirectional.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // logo here
                Image.asset(
                  'assets/images/logo.png',
                  height: getProportionateScreenHeight(130),

                  //fit: BoxFit.cover,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Text(
                  'شركة ميسان المتحدة',
                  style: TextStyle(
                      fontSize: getProportionateText(35),
                      fontWeight: FontWeight.normal,
                      height: getProportionateScreenHeight(1),
                      color: AppColors.whiteFontColor),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(5),
                ),
                Text(
                  'Maysan United Company',
                  style: TextStyle(
                      fontSize: getProportionateText(16),
                      fontWeight: FontWeight.normal,
                      height: getProportionateScreenHeight(1),
                      color: AppColors.whiteFontColor),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(50),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(700),
                  height: getProportionateScreenHeight(75),
                  child: TextFormField(
                    controller: userNameController,
                    keyboardType: TextInputType.name,
                    cursorColor: AppColors.bgColor,
                    obscureText: false,
                    style: TextStyle(height: getProportionateScreenHeight(1.5)),
                    textAlign: TextAlign.center,
                    enabled: true,
                    onTap: () {},
                    decoration: InputDecoration(
                      labelText: 'بيانات دخول الموظف',
                      labelStyle: TextStyle(color: AppColors.bgColor),
                      fillColor: AppColors.whiteFontColor,
                      filled: true,
                      prefixIcon: Image.asset('assets/images/user1.png',
                          height: getProportionateScreenHeight(24),
                          width: getProportionateScreenWidth(24)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: AppColors.bgColor,
                              width: getProportionateScreenWidth(1))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: AppColors.bgColor,
                              width: getProportionateScreenWidth(1))),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(700),
                  height: getProportionateScreenHeight(75),
                  child: TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isObscure,
                    cursorColor: AppColors.bgColor,
                    textAlign: TextAlign.center,
                    enabled: true,
                    style: TextStyle(height: getProportionateScreenHeight(1.5)),
                    onTap: () {},
                    decoration: InputDecoration(
                      labelText: 'كلمة المرور',
                      labelStyle: TextStyle(
                        color: AppColors.bgColor,
                      ),
                      fillColor: AppColors.whiteFontColor,
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.bgColor),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                      prefixIcon: Image.asset('assets/images/eye.png',
                          height: getProportionateScreenHeight(24),
                          width: getProportionateScreenWidth(24)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: AppColors.bgColor,
                              width: getProportionateScreenWidth(1))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                              color: AppColors.bgColor,
                              width: getProportionateScreenWidth(1))),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                Container(
                  height: getProportionateScreenHeight(50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: MaterialButton(
                      minWidth: getProportionateScreenWidth(150),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => FingerprintVerificationScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          'دخول',
                          style: TextStyle(
                              color: AppColors.bgColor,
                              fontSize: getProportionateText(27),
                              height: getProportionateScreenHeight(1.5),
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      color: AppColors.whiteFontColor,
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
