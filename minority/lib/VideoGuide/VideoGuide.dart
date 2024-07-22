import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Model/videoModel.dart';
import 'package:minority/VideoGuide/Video.dart';
import 'package:minority/Widget/SearchTextFeildCustom.dart';

class VideoGuide extends StatelessWidget {
   VideoGuide({super.key});

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
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 37,
              child: SearchTextFeildCustom(
                hintText: 'Search messages',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 192,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: videoGuideList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(
                            builder: (_)=>Video(data:videoGuideList[index])));
                        },
                        child: Container(
                          width: 201,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    '${videoGuideList[index].image}'),
                                fit: BoxFit.cover),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(''),
                              Text(''),
                              Image.asset(
                                'images/Play Circle.png',
                                height: 52,
                                width: 52,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  '${videoGuideList[index].title}',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white),
                                ),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 61,
                                    width: 95,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(image: AssetImage(
                                    'images/Mask group.png',
                                    
                                  ),fit: BoxFit.cover)
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Registration Pre-requisites',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.darkBlue),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        'Upload Date : 15 May 2023',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.darkBlue),
                                      ),
                                      SizedBox(height: 10,),
                                      Text(
                                        'Helly Stephen',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.darkBlue),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              


                              Column(
                                
                                children: [
                                  Image.asset('images/Heart.png',height: 20,width: 20,),
                                  SizedBox(height: 30,),
                                  
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
  List<VideoModel> videoGuideList=[
    VideoModel(title: 'Legal Requirements fora business',image: 'images/canadian-flag-woman-dock-6njyz1ex70o6t52o.jpeg',date: ' 15 Feb, 2023'),
    VideoModel(title: 'Legal Requirements fora business',image: 'images/canadian-flag-woman-dock-6njyz1ex70o6t52o.jpeg',date: ' 15 Feb, 2023'),
    VideoModel(title: 'Legal Requirements fora business',image: 'images/canadian-flag-woman-dock-6njyz1ex70o6t52o.jpeg',date: ' 15 Feb, 2023'),
    VideoModel(title: 'Legal Requirements fora business',image: 'images/canadian-flag-woman-dock-6njyz1ex70o6t52o.jpeg',date: ' 15 Feb, 2023'),
    VideoModel(title: 'Legal Requirements fora business',image: 'images/canadian-flag-woman-dock-6njyz1ex70o6t52o.jpeg',date: ' 15 Feb, 2023'),
  ];
}
