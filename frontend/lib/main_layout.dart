import 'package:flutter/material.dart';
import 'package:vietsomni/views/pages/explore_page.dart';
import 'package:vietsomni/views/pages/profile_page.dart';
import 'package:vietsomni/views/pages/sleep_page.dart';
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

  String? _initialExploreChip;

  void navigationToExplore(String chipName) {
    setState(() {
      _selectedIndex = 2;
      _initialExploreChip = chipName;
    });
  }

  List<Widget> get _pages => [
    HomePage(navigationToExplore: navigationToExplore),
    const StaticPage(),
    SleepPage(),
    ExplorePage(initialChip: _initialExploreChip),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // nội dung thay đổi theo tab
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 66, 58, 122),

        // Màu của thanh điều hướng (phần màu tím đậm)
        color: const Color(0xFF2E294E),

        // Màu của icon khi được chọn
        index: _selectedIndex,
        height: 60.0,
        animationCurve: Easing.standardAccelerate,
        animationDuration: const Duration(milliseconds: 400),
        buttonBackgroundColor: _selectedIndex == 2
            ? Colors.transparent
            : Color.fromARGB(255, 57, 51, 96),
        // Items là một danh sách Widget (chủ yếu là Icon)
        items: <Widget>[
          Icon(
            Icons.house,
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
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 83, 55, 174),
                  Color.fromARGB(255, 92, 62, 190),
                ],

                begin: Alignment.topLeft,
                end: Alignment.bottomRight,

                stops: [0.63, 0.23],
              ),
            ),
            child: Icon(Icons.nights_stay, size: 40, color: Colors.amber[200]),
          ),
          Icon(
            Icons.library_music_sharp,
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
