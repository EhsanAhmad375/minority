import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:minority/Chat/Chat.dart';
import 'package:minority/Home/Home.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/PDF_Guide/PDF_Guid.dart';
import 'package:minority/Widget/DrawerWidget.dart';
import 'package:minority/MeetupUps/MeetupUps.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:minority/VideoGuide/VideoGuide.dart';

class GoogleNavBar extends StatefulWidget {
  GoogleNavBar({super.key});

  @override
  State<GoogleNavBar> createState() => _GoogleNavBarState();
}

class _GoogleNavBarState extends State<GoogleNavBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: DrawerWidget(),
        body: Center(
          child: Screens[_selectedIndex],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    blurRadius: 7,
                    offset: Offset(0, 0),
                    color: Color(0xff00000040).withOpacity(0.25))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: GNav(
                  rippleColor: Color(0xffF5F5F5),
                  hoverColor:Color(0xffF5F5F5),
                  haptic: true,
                  tabBorderRadius: 40,
                  onTabChange: (value) {
                    setState(() {
                      _selectedIndex = value;
                    });
                  },
                  tabActiveBorder:
                      Border.all(color: AppColors.darkBlue, width: 1.25),
                  // tabBorder:
                  //     Border.all(color: Colors.grey, width: 1),
                  // tabShadow: [
                  //   // BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
                  // ],
                  curve: Curves.easeOutExpo,
                  duration: Duration(milliseconds: 400),
                  gap: 8,
                  color: AppColors.darkBlue,
                  activeColor: AppColors.darkBlue,
                  iconSize: 24,
                  tabBackgroundColor: AppColors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: 5, vertical: 5), // navigation bar padding
                  tabs: [
                    GButton(
                      icon: CupertinoIcons.home,
                      leading: Image.asset('images/Home.png',height:20 ,width: 20,),
                      iconSize: 0,
                      text: 'Home',
                    ),
                    GButton(
                      icon: CupertinoIcons.arrow_up_doc,
                      iconSize: 0,
                      leading: Image.asset('images/File Check.png',height: 20,width: 20,),
                      text: 'PDF Guide',
                    ),
                    GButton(
                      icon: CupertinoIcons.bell,
                      iconSize: 0,
                      leading: Image.asset('images/Bell.png',height: 20,width: 20,),
                      text: 'Meetup_Ups',
                    ),
                    GButton(
                      icon: CupertinoIcons.person,
                      iconSize: 0,
                      leading: Image.asset('images/User Plus.png',width: 20,height: 20,),
                      text: 'Video Guide',
                    ),
                    GButton(
                      icon: Icons.co2,
                      iconSize: 0,
                      leading: Image.asset('images/Chat.png',height: 20,width: 20,),
                      text: 'Chat',
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  int _selectedIndex = 0;

  List<Widget> Screens = [
    Home(),
    PDFGuide(),
    MeetupUps(),
    VideoGuide(),
    Chat(),
  ];
}
