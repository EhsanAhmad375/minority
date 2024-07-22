import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:minority/User/SignUp.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/GoogleNavBar.dart';
import 'package:minority/Widget/CustomTextFormFeild.dart';
import 'package:minority/User/ForgotPassword/ForgotPassword.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
              child: Image.asset(
            'images/LOGOwhite.png',
            height: 144,
          )),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffCC0000),
                        Color(0xff002D65),
                      ])),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                            ),
                          ),
                          Icon(
                            Icons.arrow_back,
                            color: AppColors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomTextFromFeild(
                        labeltext: 'Username',
                        prefixWidget: Image.asset(
                          'images/person.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextFromFeild(
                        labeltext: 'Password',
                        isObscure: !isVisible
                    ,
                    
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    sufix: Icon(
                    isVisible?Icons.visibility_off_outlined:  Icons.visibility_outlined,
                      color: AppColors.white,
                    ),
                        prefixWidget: Image.asset(
                          'images/Password.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MaterialButton(
                        color: AppColors.white,
                        minWidth: media.width,
                        height: 51,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(88))),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => GoogleNavBar()));
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: AppColors.darkBlue,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an Account?',
                            style: TextStyle(color: AppColors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (_) => SignUp()));
                              },
                              child: Text(
                                'Create One',
                                style: TextStyle(color: AppColors.white),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ForgotPassword()));
                          },
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(color: AppColors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
        
          )
        ],
      ),
    ));
  }
  bool isVisible=false;
}
