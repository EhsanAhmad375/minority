import 'package:flutter/material.dart';
import 'package:minority/User/Login.dart';
import 'package:minority/common/AppColor.dart';

class SplashScreen3 extends StatefulWidget {
  SplashScreen3({Key? key}) : super(key: key);

  @override
  _SplashScreen3State createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  List<String> onBoardingList = [
    // 'images/P1.png',
    'images/P2.png',
    'images/P3.png',
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: media.width,
                height: media.height*0.5,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onBoardingList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('${onBoardingList[index]}'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: media.width,
                height: media.height*0.5,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(22))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        style: TextStyle(color: AppColors.darkBlue),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'images/Text.png',
                            height: 52,
                          ),
                          Image.asset(
                            'images/Men.png',
                            height: 68,
                            width: 47,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Find anything related to jobs and network with people across the world from the palm of your hand.',
                        style: TextStyle(
                            color: AppColors.darkBlue,
                            fontWeight: FontWeight.w500,
                            fontSize: 11),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        color: AppColors.darkBlue,
                        minWidth: media.width,
                        height: 51,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(88))),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (_)=>Login()));
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.darkBlue),
                          borderRadius: BorderRadius.circular(88)
                        ),
                        child: MaterialButton(
                          minWidth: media.width,
                          height: 51,
                          shape: RoundedRectangleBorder(
                            
                              borderRadius:
                                  BorderRadius.all(Radius.circular(88))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/google.png',height: 28,),
                              SizedBox(width: 7,),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                    color: AppColors.darkBlue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don’t have an Account?'),
                          TextButton(onPressed: (){}, child: Text('Create One',style: TextStyle(
                            color: AppColors.darkBlue
                          ),))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
