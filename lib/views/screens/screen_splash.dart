import 'package:flutter/material.dart';
import 'screen_login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}
// Điều khiển vị trí logo
class _ScreenSplashState extends State<ScreenSplash> {
  bool _moveUp = false; 

  @override
  void initState() {
    super.initState();

    // Sau 1 giây logo trượt lên
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _moveUp = true;
      });
    });

    // Sau 3 giây fade sang màn hình login
    Future.delayed(const Duration(milliseconds: 2900), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 900),
          pageBuilder: (context, animation, secondaryAnimation) =>
              const ScreenLogin(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double logoHeight = 150;

    const String urlLogo = 'assets/img_project/Star.png';

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 55, 100),
      body: Stack(
        children: [
          // Background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_project/Screen_splash.png'),
                fit: BoxFit.cover,
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromARGB(255, 2, 42, 79),
                  Color.fromARGB(0, 0, 221, 255),
                ],
              ),
            ),
          ),

          // Các ngôi sao trang trí
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

          // Logo chính sử dụng AnimatedAligncanh giữa
          AnimatedAlign(
            duration: const Duration(seconds: 2),
            curve: Curves.easeInOut,
            alignment: _moveUp ? Alignment.topCenter : Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 50), // khoảng cách khi ở top
              child: ClipRRect(
                borderRadius: BorderRadius.circular(400),
                child: Image.asset(
                  'assets/img_project/logo.jpg',
                  width: 250,

                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
