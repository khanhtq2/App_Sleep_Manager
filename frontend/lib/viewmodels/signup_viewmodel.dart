import 'package:flutter/material.dart';

class SignUpViewModel extends ChangeNotifier {
  String password = '';
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible;
  bool get isPasswordVisible => _isPasswordVisible;

  void toggleConfirmPasswordVisibility() {
    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    notifyListeners();
  }

  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  void updatePassword(String value) {
    password = value;
    notifyListeners();
  }

  bool get isLengthValid => password.length >= 8;

  bool get hasUppercase =>
      password.isNotEmpty &&
      password[0] == password[0].toUpperCase() &&
      RegExp(r'[A-Z]').hasMatch(password);

  bool get hasSpecialChar =>
      RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(password);

  bool get isPasswordValid => isLengthValid && hasUppercase && hasSpecialChar;
}
