import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';


class CustomTextFromFeild extends StatelessWidget {
  final TextEditingController? controller;
  final String labeltext;
  final bool isObscure;
  final Widget? prefixWidget;
  final Widget? sufix;
  final VoidCallback? onTap;
  final TextInputType? textInputType;

  CustomTextFromFeild({
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
    return Card(
      color: Colors.white.withOpacity(0.3), 
      // shadowColor: Colors.black,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      child: TextFormField(
        obscureText: isObscure,
        controller: controller,
        keyboardType: textInputType,
        style: TextStyle(
          color: AppColors.white
        ),
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding:  EdgeInsets.only(right: 10,left: 3),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: AppColors.white,
              child: Center(child: prefixWidget)),
          ),
          
          suffixIcon: InkWell(
            onTap: onTap,
            child: SizedBox(
              height: 20,width:20,
              child: sufix)),
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          hintText: '$labeltext',
          hintStyle: TextStyle(
          color: AppColors.white
        ),
          labelStyle: const TextStyle(
            fontSize: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
