import 'package:flutter/material.dart';

class BackgroundLogoWidget extends StatelessWidget {
  final Widget child; // chứa nội dung form login

  const BackgroundLogoWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img_project/Screen_splash.png'),

          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment(0, 2),
          colors: [
            Color.fromARGB(255, 2, 42, 79),
            Color.fromARGB(0, 0, 221, 255),
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // LOGO
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(400),
                    child: Image.asset(
                      'assets/img_project/logo.jpg',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // NỘI DUNG (form login) được truyền từ ScreenLogin
            child,
          ],
        ),
      ),
    );
  }
}
