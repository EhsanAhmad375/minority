import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/DrawerWidget.dart';

class FAQs extends StatelessWidget {
  FAQs({super.key});

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
          title: Text('F&Qs'),
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
                height: 10,
              ),
              Text(
                'How Can We Help You ?',
                style: TextStyle(
                    color: AppColors.darkBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6,
                          offset: const Offset(0, 0),
                          color: const Color(0xff00000040).withOpacity(0.25))
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: TextFormField(
                    style: TextStyle(color: AppColors.darkBlue),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'images/Search.png',
                          height: 22,
                          width: 22,
                          color: AppColors.appGrey,
                        ),
                      ),
                      hintText: 'Search Help Article...',
                      filled: true,
                      fillColor: AppColors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Popular Articles',
                style: TextStyle(
                    color: AppColors.darkBlue,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        height: 35,
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(7),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6,
                                  offset: const Offset(0, 0),
                                  color: const Color(0xff00000040)
                                      .withOpacity(0.25))
                            ]),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${articals[index]}',
                                  style: TextStyle(
                                      fontSize: 15, color: AppColors.appGrey),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: AppColors.appGrey,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<String> articals = [
    'About Temporarily Banned Accounts',
    'How to Restore History ?',
    'How to Restore Chat History ?'
  ];
}
