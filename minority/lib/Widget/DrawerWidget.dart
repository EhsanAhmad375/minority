import 'package:flutter/material.dart';
import 'package:minority/F&Qs/FAQs.dart';
import 'package:minority/Support/Support.dart';
import 'package:minority/common/AppColor.dart';
import 'package:minority/Settings/Settings.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      height: media.height,
      color: AppColors.white,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: media.height * 0.35,
                width: media.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color(0xffCC0000),
                      Color(0xff002D65),
                    ])),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: AppColors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 84,
                            width: 84,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/Profile.png'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                    width: 2, color: AppColors.white)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Captain Jack Sparrow',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '+1 XXXXX XXX',
                                  style: TextStyle(color: AppColors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '@gmail.com',
                                  style: TextStyle(color: AppColors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      // color: AppColors.styBlue,
                      ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'images/Logout.png',
                                  height: 24,
                                  width: 24,
                                ),
                                Text(
                                  'Logout',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.darkBlue),
                                ),
                              ],
                            ),
                            Text(
                              'App Version - V2.10',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.darkBlue),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: media.height * 0.12,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 7,
                        offset: Offset(0, 0),
                        color: Color(0xff00000040).withOpacity(0.25))
                  ],
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12)),
              height: media.height * 0.6,
              width: media.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      DrawerTile(
                          media: media,
                          icons: 'images/Heart.png',
                          title: 'Favourites'),
                      SizedBox(
                        height: 15,
                      ),
                      DrawerTile(
                          media: media,
                          icons: 'images/Document Text.png',
                          title: 'Blogs'),
                      SizedBox(
                        height: 15,
                      ),
                      DrawerTile(
                          media: media,
                          icons: 'images/User Rounded.png',
                          title: 'Connection Requests'),
                      SizedBox(
                        height: 15,
                      ),
                      DrawerTile(
                          media: media,
                          icons: 'images/Home WiFi.png',
                          title: 'Live Meet-Ups'),
                      SizedBox(
                        height: 15,
                      ),
                      DrawerTile(
                        media: media,
                        icons: 'images/Settings Minimalistic.png',
                        title: 'Settings',
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => Settings()));
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      DrawerTile(
                        media: media,
                        icons: 'images/Dialog.png',
                        title: 'F&Q',
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => FAQs()));
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      DrawerTile(
                        media: media,
                        icons:
                            'images/material-symbols_support-agent-rounded.png',
                        title: 'Support',
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => Support()));
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  String? title;
  String? icons;
  VoidCallback? onTap;
  DrawerTile({
    Key? key,
    this.title,
    this.icons,
    this.onTap,
    required this.media,
  }) : super(key: key);

  final Size media;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 45,
          width: media.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 7,
                  offset: Offset(0, 0),
                  color: Color(0xff00000040).withOpacity(0.25))
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 15,
              ),
              Image.asset(
                '$icons',
                height: 24,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                '$title',
                style: TextStyle(fontSize: 16, color: AppColors.darkBlue),
              )
            ],
          )),
    );
  }
}
