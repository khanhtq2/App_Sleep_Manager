import 'package:flutter/material.dart';

import 'routes.dart'; // 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash, // Bắt đầu từ trang chờ
      routes: appRoutes, // Dùng map từ file routes.dart
    );
  }
}
