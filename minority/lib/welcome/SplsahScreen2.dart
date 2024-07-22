import 'package:flutter/material.dart';
import 'package:minority/welcome/SplashScreen3.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
        future: _navigateToGetStartedScreen(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return Center(
            child: Image.asset(
              'images/LOGOwhite.png',
              width:267,
                height:296,
            ),
          );
        },
      )),
    );
  }

  Future<void> _navigateToGetStartedScreen() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return SplashScreen3();
          },
      ),
      );
    });
  }
}
