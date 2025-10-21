import 'package:flutter/material.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({super.key});

  @override
  Widget build(BuildContext context) {
    double logoHeight = 150;
    const String urlLogo = 'assets/img_project/Star.png';
    return Scaffold(
      backgroundColor: const Color(0xFF8ED6FF),
      body: Stack(
        children: [
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
