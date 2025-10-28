import 'package:flutter/material.dart';
import 'screen_login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,  
        MaterialPageRoute(builder: (_) => const ScreenLogin()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double logoHeight = 100;
    const String urlLogo = 'assets/img_project/Star.png';
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 7, 55, 100),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_project/Screen_splash.png'),
                fit: BoxFit.cover,
              ),
              gradient: LinearGradient(
                begin: AlignmentGeometry.directional(0, 2),
                colors: [
                  Color.fromARGB(255, 2, 42, 79),
                  Color.fromARGB(0, 0, 221, 255),
                ],
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 40,
            child: Image.asset(urlLogo, height: logoHeight),
          ),
          Positioned(
            top: 100,
            right: 10,
            child: Image.asset(urlLogo, height: logoHeight),
          ),
          Positioned(
            bottom: 100,
            right: 10,
            child: Image.asset(urlLogo, height: logoHeight),
          ),
          Positioned(
            bottom: 130,
            left: 0,
            child: Image.asset(urlLogo, height: logoHeight),
          ),
          Positioned(
            bottom: 0,
            left: 120,
            child: Image.asset(urlLogo, height: logoHeight),
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(400),
              child: Image.asset('assets/img_project/logo.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
