import 'package:flutter/material.dart';
import 'package:vietsomni/main_layout.dart';
import 'package:vietsomni/views/pages/music_page.dart';
import 'views/screens/screen_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ScreenSplash(),
      routes: {
        '/main': (context) => MainLayout(),
        '/music': (context) => MusicPage(),
      },
    );
  }
}
