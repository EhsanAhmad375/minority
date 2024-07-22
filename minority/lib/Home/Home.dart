import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/DrawerWidget.dart';
import 'package:minority/Widget/SearchTextFeildCustom.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 95,
        backgroundColor: AppColors.darkBlue,
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(Icons.menu)),
        title: Text('Welcome Back'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: MaterialButton(
              onPressed: () {},
              color: AppColors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Text("Log Out",
                  style: TextStyle(
                    color: AppColors.darkBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
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
              height: 20,
            ),
            Container(
              height: 37,
              child: SearchTextFeildCustom(
                hintText: 'Search Messages',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 121,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 113,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 7,
                                offset: Offset(0, 0),
                                color: AppColors.shadowColor.withOpacity(0.25))
                          ],
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/Document Text.png',
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Visit Blogs',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkBlue),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Join Live Meet_Ups',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkBlue),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 5),
                      child: Container(
                        width: 113,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 7,
                                offset: Offset(0, 0),
                                color: AppColors.shadowColor.withOpacity(0.25))
                          ],
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/Screencast 2.png',
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'American Entrepreneurs',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.darkBlue),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '728,908 members',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.darkBlue),
                                  ),
                                  Text(
                                    '7 Mutual Connections',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.darkBlue),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Card(
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(45)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Text(
                                        'Join Now',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.darkBlue),
                                      ),
                                    ),
                                  ),
                                  
                                SizedBox(
                                  height: 25,width:100 ,
                                  child: ImageStackWidget(imagePaths: imagesList,))
                                
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  List<String> imagesList = [
    'images/Captain.png',
    'images/canadian-flag-woman-dock-6njyz1ex70o6t52o.jpeg',
    'images/Captain.png',
    'images/canadian-flag-woman-dock-6njyz1ex70o6t52o.jpeg',
    'images/Captain.png',
    'images/canadian-flag-woman-dock-6njyz1ex70o6t52o.jpeg',
    
  ];
}

class ImageStackWidget extends StatelessWidget {
  final List<String> imagePaths;

  ImageStackWidget({required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(
        imagePaths.length,
        (index) => Positioned(
          left: 15.0 * index,
          // top: 1.0 * index,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.darkBlue,
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(
              imagePaths[index],
              
              
            ),fit: BoxFit.cover,)

            ),
            height: 22,width: 22,
            
          
          ),
        ),
      ),
    );
  }
}
