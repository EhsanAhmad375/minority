import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';


class BookingTextFromFeild extends StatelessWidget {
  final TextEditingController? controller;
  final String labeltext;
  final bool isObscure;
  final Widget? prefixWidget;
  final Widget? sufix;
  final VoidCallback? onTap;
  final TextInputType? textInputType;

  BookingTextFromFeild({
    Key? key,
    this.controller,
    required this.labeltext,
    this.isObscure = false,
    this.prefixWidget,
    this.sufix,
    this.onTap,
    this.textInputType,
  }) : super(key: key);

  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(50),
        boxShadow:[ BoxShadow(
                                        blurRadius: 7,
                                        offset: Offset(0, 0),
                                        color: Color(0xff00000040).withOpacity(0.25)
                                      )],
      ),
      child: TextFormField(
        obscureText: isObscure,
        controller: controller,
        keyboardType: textInputType,
        style: TextStyle(
          color: AppColors.white
        ),
        decoration: InputDecoration(
          
          
          suffixIcon: sufix,
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          hintText: '$labeltext',
        //   hintStyle: TextStyle(
        //   color: AppColors.white
        // ),
          labelStyle: const TextStyle(
            fontSize: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
