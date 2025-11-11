import 'package:flutter/material.dart';
import 'package:vietsomni/views/pages/profile_page.dart';
import 'package:vietsomni/views/pages/static_page.dart';
import 'views/pages/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const StaticPage(),
    const HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // nội dung thay đổi theo tab
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xFF2E294E),

        // Màu của thanh điều hướng (phần màu tím đậm)
        color: const Color(0xFF2E294E),

        // Màu của icon khi được chọn
        index: _selectedIndex,
        height: 60.0,
        animationCurve: Easing.standardAccelerate,
        animationDuration: const Duration(milliseconds: 400),
        buttonBackgroundColor: Color.fromARGB(255, 66, 59, 112),
        // Items là một danh sách Widget (chủ yếu là Icon)
        items: const <Widget>[
          Icon(
            Icons.nights_stay,
            size: 30,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(2, 4),
                blurRadius: 3.5,
                color: Color.fromARGB(135, 39, 38, 38),
              ),
            ],
          ),
          Icon(
            Icons.bar_chart,
            size: 30,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(2, 4),
                blurRadius: 3.5,
                color: Color.fromARGB(135, 39, 38, 38),
              ),
            ],
          ),
          Icon(
            Icons.spa,
            size: 30,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(2, 4),
                blurRadius: 3.5,
                color: Color.fromARGB(135, 39, 38, 38),
              ),
            ],
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
            shadows: [
              Shadow(
                offset: Offset(2, 4),
                blurRadius: 3.5,
                color: Color.fromARGB(135, 39, 38, 38),
              ),
            ],
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
