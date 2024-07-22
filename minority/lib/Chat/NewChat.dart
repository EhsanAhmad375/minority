import 'package:flutter/material.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/SearchTextFeildCustom.dart';

class NewChat extends StatefulWidget {
 NewChat({super.key});

  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
 

  @override
  Widget build(BuildContext context) {
    final media=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            
            backgroundColor: AppColors.darkBlue,
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: const EdgeInsets.all(14),
              child: Image.asset('images/cross.png',),
            ),
            title: Text('New message'),
        
          ),
         
        body: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: 
                    Container(
                      height: 37,
                      child: SearchTextFeildCustom(
                        hintText: 'Type a name',
                      ),
                    ),
                    
                    
                  
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    
                    return GestureDetector(
                      onTap: (){},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 10),
                        child: Row(
                          children: [
                            Container(
                    
                              height: 37,
                              width: 37,
                              decoration: BoxDecoration(
                              
                              shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('images/Ell.png',),fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: media.width*0.82,
                              height: 52,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7,
                                      offset: Offset(0, 0),
                                      color: AppColors.shadowColor
                                          .withOpacity(0.25))
                                ],
                                color: AppColors.white,
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(5)),
                              ),
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Frank',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight:FontWeight.w400,
                                                color: AppColors.darkBlue),
                                          ),
                                          Text(
                                            'Wed',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.darkBlue),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Hi, How are you ?',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.darkBlue),
                                          ),
                                          
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
