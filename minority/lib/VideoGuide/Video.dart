import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Video extends StatelessWidget {
  dynamic data;
  Video({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 202,
            width: media.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('${data.image}'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/backward.png',
                        height: 30,
                        width: 30,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'images/play.png',
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'images/forward.png',
                        height: 30,
                        width: 30,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'images/play.png',
                            height: 20,
                            width: 20,
                          ),
                          Text(
                            '00:30 / 33:45',
                            style: TextStyle(color: AppColors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'images/Like.png',
                            color: AppColors.white,
                            height: 20,
                            width: 20,
                          ),
                          Image.asset(
                            'images/Dlike.png',
                            color: AppColors.white,
                            height: 40,
                            width: 40,
                          ),
                          Image.asset(
                            'images/Heart.png',
                            color: AppColors.white,
                            height: 20,
                            width: 20,
                          ),
                          Image.asset(
                            'images/tv.png',
                            color: AppColors.white,
                            height: 40,
                            width: 40,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${data.title}',
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Posted on: ${data.date}',
                  style: TextStyle(
                      color: Color(0xff606060),
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('images/tom.png'),
                  ),
                  title: Text(
                    'Tom Cruise',
                    style: TextStyle(
                        color: AppColors.darkBlue,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    '190K Connections',
                    style: TextStyle(
                        color: AppColors.darkBlue,
                        fontSize: 8,
                        fontWeight: FontWeight.w500),
                  ),
                  trailing: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Connect',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ),
                    color: AppColors.darkBlue,
                    minWidth: 118,
                    height: 31,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: AppColors.orange,
              width: media.width,
              child: VideoDetail(),
            ),
          )
        ]),
      ),
    );
  }
}

class VideoDetail extends StatefulWidget {
  const VideoDetail({Key? key}) : super(key: key);

  @override
  State<VideoDetail> createState() => _VideoDetailState();
}

class _VideoDetailState extends State<VideoDetail> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 20,
            elevation: 0,
            backgroundColor: AppColors.white,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              indicatorWeight: 4,
              indicatorColor: AppColors.darkBlue,
              unselectedLabelColor: Colors.grey,
              labelColor: AppColors.darkBlue,
              tabs: [
                Tab(
                  child: Text(
                    'Description',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
                Tab(
                  child: Text(
                    'Applied',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
                Tab(
                  child: Text(
                    'Offers',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                textAlign: TextAlign.justify,
                style: TextStyle(height: 1.7, color: AppColors.darkBlue),
              ),
            ),
              VideoDescription2(),
        
            Links(),
          ]),
        ),
      );
}

class Links extends StatelessWidget {
  const Links({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          MaterialButton(
            height: 36,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            color: AppColors.white,
            onPressed: (){},child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('images/facebook.png',height: 24,width: 24,),
              SizedBox(width: 5,),
              Text('Facebook',style: TextStyle(
                color: AppColors.darkBlue,
                fontSize: 12,fontWeight: FontWeight.w700
              ),),
            ],
          )),
      
      
          MaterialButton(
            height: 36,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            color: AppColors.white,
            onPressed: (){},child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('images/linkedin.png',height: 24,width: 24,),
              SizedBox(width: 5,),
              Text('linkedin',style: TextStyle(
                color: AppColors.darkBlue,
                fontSize: 12,fontWeight: FontWeight.w700
              ),),
            ],
          )),
      
      
          MaterialButton(
            height: 36,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            color: AppColors.white,
            onPressed: (){},child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('images/instagram.png',height: 24,width: 24,),
              SizedBox(width: 5,),
              Text('Instagram',style: TextStyle(
                color: AppColors.darkBlue,
                fontSize: 12,fontWeight: FontWeight.w700
              ),),
            ],
          )),
      
      
        ],
      ),
    );
  }
}

class VideoDescription2 extends StatelessWidget {
  const VideoDescription2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
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
        });
  }
}
