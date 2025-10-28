import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // background
      backgroundColor: const Color.fromARGB(255, 7, 55, 100),
      body: Container(
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
        // form login với logo
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
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
              ],
            ),
            SizedBox(height: 20),
            //textfield email
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 240, 230, 230),
                      hintText: 'Nhập email hoặc số điện thoại',
                      hintStyle: TextStyle(fontSize: 18),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  //button đăng nhập
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/main',
                        (route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 219, 129, 255),
                      minimumSize: Size(double.infinity, 60),
                    ),
                    child: Text(
                      'Tiếp tục',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 9, 16),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  //button quên mật khẩu
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Quên mật khẩu?',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  //button tạo tài khoản mới
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Tạo tài khoản mới',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  //button đăng nhập với google
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 219, 129, 255),
                      minimumSize: const Size(double.infinity, 60),
                    ),

                    child: Row(
                      children: const [
                        Icon(Icons.email, color: Colors.black, size: 40),
                        SizedBox(width: 20),
                        Text(
                          'Đăng nhập với Google',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  //button đăng nhập với Icloud
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 219, 129, 255),
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.cloud, color: Colors.black, size: 40),
                        SizedBox(width: 20),
                        Text(
                          'Đăng nhập với Icloud',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
