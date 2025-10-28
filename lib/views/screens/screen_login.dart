import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 55, 100),
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

            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
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
          ),

          Align(
            alignment: Alignment.center,
     
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
icon: Icon(Icons.person),

labelText: 'Nhập email hoặc số điện thoại',
                    ),
                  ),
                  SizedBox(height: 20),

                ],
              ),
            
          ),
        ],
      ),
    );
  }
}
