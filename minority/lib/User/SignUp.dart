import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/GoogleNavBar.dart';
import 'package:minority/Widget/persistantNav.dart';
import 'package:minority/Widget/CustomTextFormFeild.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: media.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xffCC0000),
                Color(0xff002D65),
              ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 25,),
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
                    labeltext: 'Phone Number',
                    prefixWidget: Image.asset(
                      'images/Phone.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFromFeild(
                    labeltext: 'Business Category',
                    prefixWidget: Image.asset(
                      'images/Wallet.png',
                      height: 24,
                      width: 24,
                    ),
                    sufix: Icon(Icons.keyboard_arrow_down,color: AppColors.white,),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFromFeild(
                    labeltext: 'Email Adress',
                    prefixWidget: Image.asset(
                      'images/Letter.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                  CustomTextFromFeild(
                    isObscure: !isVisibleC
                    ,
                    labeltext: 'Confirm Password',
                    onTap: () {
                      setState(() {
                        isVisibleC = !isVisibleC;
                      });
                    },
                    sufix: Icon(
                    isVisibleC?Icons.visibility_off_outlined:  Icons.visibility_outlined,
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>GoogleNavBar()));
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          color: AppColors.darkBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 13, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(text: 'I agree to the '),
                        TextSpan(
                          text: ' Terms & Conditions',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  bool isVisible=false;
  bool isVisibleC=false;
}
