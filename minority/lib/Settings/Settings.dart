import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Model/SettingsModel.dart';
import 'package:minority/Widget/DrawerWidget.dart';

class Settings extends StatelessWidget {
  Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 95,
          backgroundColor: AppColors.darkBlue,
          automaticallyImplyLeading: false,
          leading: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Icon(Icons.menu)),
          title: Text('Settings'),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: settingsList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '${settingsList[index].title}',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: AppColors.darkBlue,
                                    ),
                                  ),
                                  Text(
                                    '${settingsList[index].subTitle}',
                                    style: TextStyle(
                                      color: AppColors.darkBlue,
                                    ),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: AppColors.darkBlue,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: AppColors.darkBlue,
                          thickness: 1,
                          height: 0,
                        )
                      ],
                    );
                  }),
              ListTile(
                title: Text(
                  'Delete Account',
                  style: TextStyle(
                    color: Color(0xffFD0D1B),
                  ),
                ),
              ),
              Divider(
                color: AppColors.darkBlue,
                thickness: 1,
                height: 0,
              )
            ],
          ),
        ),
      ),
    );
  }

  List<SettingsModel> settingsList = [
    SettingsModel(title: 'Phone number', subTitle: '+1 123-456-789'),
    SettingsModel(title: 'App Language', subTitle: 'System Default'),
    SettingsModel(title: 'Rules & Terms', subTitle: ''),
    SettingsModel(title: 'Change Password', subTitle: ''),
  ];
}
