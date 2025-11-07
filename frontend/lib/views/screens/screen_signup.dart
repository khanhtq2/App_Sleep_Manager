import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/signup_viewmodel.dart';
import 'background_widget.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  @override
  Widget build(BuildContext context) {
    // Cung cấp SignUpViewModel cho cây widget con
    return ChangeNotifierProvider(
      create: (_) => SignUpViewModel(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 7, 55, 100),
        body: Consumer<SignUpViewModel>(
          builder: (context, vm, _) => BackgroundLogoWidget(
            // Background
            child:
                // Email
                Padding(
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

                      SizedBox(height: 20),

                      // Password Rules
                      _buildRule('Ít nhất 8 ký tự', vm.isLengthValid),
                      SizedBox(height: 10),
                      _buildRule('Ký tự đầu viết hoa', vm.hasUppercase),
                      SizedBox(height: 10),
                      _buildRule('Chứa ký tự đặc biệt', vm.hasSpecialChar),
                      SizedBox(height: 10),

                      // Password
                      TextField(
                        obscureText: !vm.isPasswordVisible,

                        obscuringCharacter: '*',
                        onChanged: vm.updatePassword,
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
                              vm.isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: vm.togglePasswordVisibility,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      //Cònfirm Password
                      TextField(
                        obscureText: !vm.isConfirmPasswordVisible,

                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(255, 240, 230, 230),
                          hintText: 'Xác nhận mật khẩu',
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
                              vm.isConfirmPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: vm.toggleConfirmPasswordVisibility,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Đã có tài khoản? Đăng nhập',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 219, 129, 255,),
                          minimumSize: Size(double.infinity, 60),
                        ),
                        child: const Text(
                          'Đăng ký',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 9, 16),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildRule(String text, bool valid) {
    return Row(
      children: [
        Icon(
          valid ? Icons.check_circle : Icons.cancel,
          color: valid ? Colors.green : Colors.red,
        ),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(color: Colors.white, fontSize: 16)),
      ],
    );
  }
}
