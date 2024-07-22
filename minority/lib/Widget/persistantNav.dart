import 'package:flutter/material.dart';
import 'package:minority/Chat/Chat.dart';
import 'package:minority/Home/Home.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/PDF_Guide/PDF_Guid.dart';
import 'package:minority/Widget/DrawerWidget.dart';
import 'package:minority/MeetupUps/MeetupUps.dart';
import 'package:minority/VideoGuide/VideoGuide.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MyPersistent extends StatelessWidget {
  MyPersistent({Key? key}) : super(key: key);

  // Create GetX controller to manage the state
  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreen() {
    return [
      Home(),
      PDFGuide(),
      MeetupUps(),
      VideoGuide(),
      Chat(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
        // activeColorPrimary: Color.fromARGB(255, 9, 103, 180),
        icon: Image.asset('images/Home.png'),

        title: 'Home',

        textStyle: TextStyle(color: AppColors.darkBlue),
        activeColorPrimary: AppColors.darkBlue,
        // activeColorSecondary: AppColors.white
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: AppColors.darkBlue,
        title: 'PDF Guide',
        icon: Image.asset('images/File Check.png'),
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset('images/Bell.png'),
        title: 'Meetup_Ups',

        textStyle: TextStyle(color: AppColors.darkBlue),
        activeColorPrimary: AppColors.darkBlue,
        // activeColorSecondary: AppColors.white
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset('images/User Plus.png'),
        title: 'Video Guide',

        textStyle: TextStyle(color: AppColors.darkBlue),
        activeColorPrimary: AppColors.darkBlue,
        // activeColorSecondary: AppColors.white
      ),
      PersistentBottomNavBarItem(
        icon: Image.asset('images/Chat.png'),
        title: 'Chat',
        textStyle: TextStyle(color: AppColors.darkBlue),
        activeColorPrimary: AppColors.white,
        activeColorSecondary: AppColors.darkBlue,
        


      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        drawer: DrawerWidget(),
        body: PersistentTabView(
          context,
          controller: controller,
          screens: _buildScreen(),
          items: _navBarItem(),
          decoration: NavBarDecoration(
            border: Border.all(color: AppColors.darkBlue),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(22)),
          ),
          navBarStyle: NavBarStyle.style1,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
