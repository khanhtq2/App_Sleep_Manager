import 'package:flutter/material.dart';
import 'background_widget.dart';
import '../../routes.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  bool _obscureText = true;
  Color backgroundColor = Color.fromARGB(193, 219, 129, 255);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 8, 64, 117),
      body: BackgroundLogoWidget(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 240, 230, 230),
                  hintText: 'Nhập email hoặc số điện thoại',
                  hintStyle: const TextStyle(fontSize: 18),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              TextField(
                obscureText: _obscureText,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 240, 230, 230),
                  hintText: 'Nhập mật khẩu',
                  hintStyle: const TextStyle(fontSize: 18),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText; // đảo trạng thái
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // button đăng nhập
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.mainLayout);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 100,
                  ),
                ),
                child: const Text(
                  'Đăng nhập',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 9, 16),
                    fontSize: 18,
                  ),
                ),
              ),

              // button quên mật khẩu
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.forgetPassword);
                  },
                  child: const Text(
                    'Quên mật khẩu?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),

                      fontSize: 18,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),

              // button tạo tài khoản mới
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.signup);
                  },
                  child: const Text(
                    'Tạo tài khoản mới',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 18,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // button đăng nhập với Google
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor,
                  minimumSize: const Size(double.infinity, 60),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.email, color: Colors.black, size: 40),
                    SizedBox(width: 20),
                    Text(
                      'Đăng nhập với Google',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // button đăng nhập với iCloud
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor,
                  minimumSize: const Size(double.infinity, 60),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.cloud, color: Colors.black, size: 40),
                    SizedBox(width: 20),
                    Text(
                      'Đăng nhập với Icloud',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor,
                  minimumSize: const Size(double.infinity, 60),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.sms, color: Colors.black, size: 40),
                    SizedBox(width: 20),
                    Text(
                      'Đăng nhập với OTP',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
