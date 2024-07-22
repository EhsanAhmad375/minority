import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/CustomTextFormFeild.dart';
import 'package:minority/User/ForgotPassword/verificationCode.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: media.height,
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.vertical(top: Radius.circular(22)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xffCC0000),
                Color(0xff002D65),
              ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: AppColors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'images/forgot.png',
                    height: 210,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    child: Text(
                      'Enter your email for the verification process, we will send 4 digits code to your email',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomTextFromFeild(
                    labeltext: 'E-Mail Adress',
                    prefixWidget: Image.asset(
                      'images/Letter.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    color: AppColors.white,
                    minWidth: media.width,
                    height: 51,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(88))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => VerificationCode()));
                    },
                    child: Text(
                      'Confirm E-Mail',
                      style: TextStyle(
                          color: AppColors.darkBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
