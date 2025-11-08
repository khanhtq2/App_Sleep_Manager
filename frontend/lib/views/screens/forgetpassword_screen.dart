import 'package:flutter/material.dart';
import 'background_widget.dart';
import '../../routes.dart';
class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 55, 100),
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

              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.confirmOtp);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(193, 219, 129, 255),
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 100,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Gửi yêu cầu',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 1, 0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
