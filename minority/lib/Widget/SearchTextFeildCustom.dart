import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';

class SearchTextFeildCustom extends StatelessWidget {
  final String? hintText;
  TextEditingController? textEditingController;
  SearchTextFeildCustom({
    Key? key,
    this.hintText,
    this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      style: TextStyle(
        color: AppColors.white
      ),
      decoration: InputDecoration(
        
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5)),
          contentPadding: EdgeInsets.symmetric(vertical: 10),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'images/Search.png',
              height: 22,
              width: 22,
            ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.white),
          filled: true,
          fillColor: AppColors.darkBlue),
    );
  
  }
}
