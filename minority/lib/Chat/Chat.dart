import 'package:flutter/material.dart';
import 'package:minority/Chat/NewChat.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Widget/SearchTextFeildCustom.dart';


class Chat extends StatefulWidget {
 Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
 int selectedIndx=0;

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
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 37,
                      child: SearchTextFeildCustom(
                        hintText: 'Search Messages',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/Unread.png',
                    height: 37,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'images/Manage Chat.png',
                    height: 37,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    
                    return GestureDetector(
                      onTap: (){
                        setState(() {
                        selectedIndx=index;  
                        });
                      },
                      onLongPress: (){
                        setState(() {
                          isCheck=!isCheck;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, bottom: 10),
                        child: Row(
                          children: [
                            isCheck? Checkbox(value: isCheck, onChanged: (value){
                              setState(() {
                                selectedItems[index] = value!;
                              });
                            }):
                            Container(
                    
                              height: 37,
                              width: 37,
                              decoration: BoxDecoration(
                              
                              shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage('images/Ell.png',),fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Container(
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
                                                  fontWeight:selectedIndx==index?FontWeight.w600: FontWeight.w400,
                                                  color: AppColors.darkBlue),
                                            ),
                                            Text(
                                              'Wed',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight:selectedIndx==index?FontWeight.w600: FontWeight.w400,
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
                                                  fontWeight:selectedIndx==index?FontWeight.w600: FontWeight.w400,
                                                  color: AppColors.darkBlue),
                                            ),
                                            selectedIndx==index?CircleAvatar(
                                              radius: 8,
                                              backgroundColor: AppColors.darkBlue,
                                              child: Text('2',style: TextStyle(
                                                fontSize: 11,
                                                
                                              ),),
                                            ):SizedBox(),
                                          ],
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
                backgroundColor: AppColors.darkBlue,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NewChat()));
                  print('object');
                },
                child: Image.asset(
                  'images/edit.png',
                  height: 24,
                  width: 24,
                ),
              ),
            
    );
  }
  bool isCheck=false;

  List<bool> selectedItems = List.generate(5, (index) => false);
}
