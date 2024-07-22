import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/DrawerWidget.dart';
class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          centerTitle: true,
          toolbarHeight: 95,
          backgroundColor: AppColors.darkBlue,
          automaticallyImplyLeading: false,
          leading: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Icon(Icons.menu)),
          title: Text('Support'),
          actions: [
            InkWell(
              onTap: (){
                  Navigator.pop(context);
                },
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
        drawer: DrawerWidget(),
      ),
    );
  }
}
