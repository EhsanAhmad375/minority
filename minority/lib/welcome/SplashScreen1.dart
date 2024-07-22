import 'package:flutter/material.dart';
import 'package:minority/welcome/SplsahScreen2.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder(
        future: _navigateToWhiteScreen(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(0xffCC0000),
                  Color(0xff002D65),
                ])),
            child: Center(
              child: Image.asset(
                'images/LOGO.png',
                width: 268,
                height: 296,
              ),
            ),
          );
        },
      )),
    );
  }

  Future<void> _navigateToWhiteScreen() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(
        context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return const SplashScreen2();
        },
      ),
      );
    });
  }
}
