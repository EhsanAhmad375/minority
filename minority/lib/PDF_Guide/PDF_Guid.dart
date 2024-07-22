import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/SearchTextFeildCustom.dart';

class PDFGuide extends StatelessWidget {
  const PDFGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 95,
          backgroundColor: AppColors.darkBlue,
          automaticallyImplyLeading: false,
          leading: InkWell(
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
            child: Icon(Icons.menu)),
          title: Text('Welcome Back'),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child:  MaterialButton(
                onPressed: (){},
                color: AppColors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
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
       
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: 
            Column(
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
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 80,
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
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/File Check.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Liked Files',
                                    style: TextStyle(color: AppColors.darkBlue),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                '7 Files Added',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffA7A7A7)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 80,
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
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'images/File Check.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Saved Files',
                                    style: TextStyle(color: AppColors.darkBlue),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                '10 Files Added',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffA7A7A7)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'PDF Files',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkBlue),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 5),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 113,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7,
                                      offset: Offset(0, 0),
                                      color: AppColors.shadowColor
                                          .withOpacity(0.25))
                                ],
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'images/Document Text.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 7),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Registration Pre-requisites',
                                                style: TextStyle(
                                                    color: AppColors.darkBlue,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Upload Date : 15 May 2023',
                                                style: TextStyle(
                                                  color: AppColors.darkBlue,
                                                  fontSize: 10,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Image.asset(
                                            'images/Like.png',
                                            width: 24,
                                            height: 24,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Image.asset(
                                            'images/Download Minimalistic.png',
                                            width: 24,
                                            height: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
            
      ),
      floatingActionButton:  FloatingActionButton(
                onPressed: () {},
                backgroundColor: AppColors.darkBlue,
                child: Icon(Icons.add,size: 40,),
              ),
           
    );
  }
}
