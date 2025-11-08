import 'package:flutter/material.dart';
import 'package:vietsomni/views/screens/background_widget.dart';
import '../../viewmodels/signup_viewmodel.dart';
import 'package:provider/provider.dart';

class RestartPassword extends StatefulWidget {
  const RestartPassword({super.key});

  @override
  State<RestartPassword> createState() => _RestartPassword();
}

class _RestartPassword extends State<RestartPassword> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignUpViewModel(),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 7, 55, 100),
        body: Consumer<SignUpViewModel>(
          builder: (context, vm, _) => BackgroundLogoWidget(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    obscureText: !vm.isPasswordVisible,
                    obscuringCharacter: '*',
                    onChanged: vm.updatePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 240, 230, 230),
                      hintText: 'Nhập mật khẩu mới',
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
                        onPressed: () {
                          vm.togglePasswordVisibility();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Password Rules
                  _buildRule('Ít nhất 8 ký tự', vm.isLengthValid),
                  SizedBox(height: 10),
                  _buildRule('Ký tự đầu viết hoa', vm.hasUppercase),
                  SizedBox(height: 10),
                  _buildRule('Chứa ký tự đặc biệt', vm.hasSpecialChar),
                  SizedBox(height: 10),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: !vm.isConfirmPasswordVisible,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 240, 230, 230),
                      hintText: 'Xác nhận mật khẩu mới',
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
                        onPressed: () {
                          vm.toggleConfirmPasswordVisibility();
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(193, 219, 129, 255),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 100,
                          ),
                    ),
                    child: const Text(
                      'Xác nhận',
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
