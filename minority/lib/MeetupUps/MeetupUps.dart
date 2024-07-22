import 'package:flutter/material.dart';
import 'package:minority/Home/Home.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/CustomTextFormFeild.dart';
import 'package:minority/Widget/BookingTextFormFeild.dart';

class MeetupUps extends StatelessWidget {
   MeetupUps({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  height: 37,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xff002d65)),
                  child: Center(
                    child: Text("Add Meet-Up",
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        )),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ongoing Meet-Ups',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Container(
              height: media.height * 0.28,
              child: ListView.builder(
                  itemCount: 2,
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
                              horizontal: 10, vertical: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/Home WiFi.png',
                                        height: 24,
                                        width: 24,
                                        color:Color(0xffCC0000),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Live',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xffCC0000)),
                                      )
                                    ],
                                  ),
                                  Text(
                                    'TW Community',
                                    style: TextStyle(
                                        color: AppColors.darkBlue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Joined By:',
                                style: TextStyle(
                                    fontSize: 13, color: AppColors.darkBlue),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                  height: 25,width:100 ,
                                  child: ImageStackWidget(imagePaths: imagesList,))
                                ,
                                  SizedBox(),
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
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Upcoming Meet-Ups',
              style: TextStyle(
                color: AppColors.darkBlue,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 2,
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
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'USA Community',
                                style: TextStyle(
                                    color: AppColors.darkBlue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Monday, 15 June 2023',
                                style: TextStyle(
                                    fontSize: 13, color: AppColors.darkBlue),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: MaterialButton(
                                      onPressed: (){
                                        _showBottomSheet(context);
                                      },
                                      color: AppColors.darkBlue,
                                      height: 33,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                              BorderRadius.circular(16),
                                          
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'images/Chair 2.png',
                                            color: AppColors.white,
                                            height: 24,
                                            width: 24,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            'Book Your Seat',
                                            style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(
                                          color: AppColors.darkBlue,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Icon(
                                          Icons.share_outlined,
                                          color: AppColors.white,
                                        ),
                                      )),
                                ],
                              ),
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

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(22))
      ),
      builder: (BuildContext context) {
        final media=MediaQuery.of(context).size;
        return Container(
          height: media.height*0.55,
          decoration: BoxDecoration(
            color: Colors.white,borderRadius: BorderRadius.vertical(top: Radius.circular(22))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              
              children: [
                SizedBox(height: 22,),
                Text(
                  'Seat Booked',
                  style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color: AppColors.darkBlue),
                ),
                SizedBox(height: 22,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Set Reminder',style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 16,fontWeight: FontWeight.w600
                    ),),
                    Text('Cancel',style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 16,fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
                SizedBox(height: 15,),
                BookingTextFromFeild(labeltext: 'Event Name'),
                SizedBox(height: 15,),
                BookingTextFromFeild(labeltext: 'Date'),
                SizedBox(height: 15,),
                BookingTextFromFeild(labeltext: 'Time'),
                SizedBox(height: 15,),
                MaterialButton(
                  minWidth: 195,
                  height: 38,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45)
                  ),
                  color: AppColors.darkBlue,
                  onPressed: (){},child:Text('Set Reminder',style: TextStyle(
                  color: AppColors.white,fontSize: 12,fontWeight: FontWeight.w500
                ),),)
              ],
            ),
          ),
        );
      },
    );
  }
}
