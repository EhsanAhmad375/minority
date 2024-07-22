import 'package:flutter/material.dart';
import 'package:otp_text_field/style.dart';
import 'package:minority/common/AppColor.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:minority/Widget/CustomTextFormFeild.dart';
import 'package:minority/User/ForgotPassword/ChangePassword.dart';

class VerificationCode extends StatelessWidget {
  VerificationCode({super.key});

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
                        'Verification Code',
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
                    'images/verifi.png',
                    height: 210,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Verify email address',
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
                      'Verification code sent to: umar@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OTPTextField(
                    onTap: () {},
                    keyboardType: TextInputType.number,
                    onChanged: (value) {},
                    controller: otpController,
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 45,
                    style: TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onCompleted: (pin) {},
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
                              builder: (_) => ChangePassword()));
                    },
                    child: Text(
                      'Confirm Code',
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

  OtpFieldController otpController = OtpFieldController();
}
