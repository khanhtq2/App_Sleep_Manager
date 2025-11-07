// pages
import 'package:flutter/material.dart';

import 'views/pages/home_page.dart';
import 'views/pages/music_page.dart';
import 'views/pages/stories_page.dart';

//views
import 'views/screens/screen_splash.dart';
import 'views/screens/screen_login.dart';
import 'views/screens/screen_signup.dart';
import 'views/screens/screen_forgetpassword.dart';

import 'main_layout.dart';

class Routes {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgetPassword = '/forgetPassword';
  static const String home = '/home';
  static const String music = '/music';
  static const String stories = '/stories';
  static const String mainLayout = '/mainLayout';
}

Map<String, WidgetBuilder> appRoutes = {
  Routes.splash: (_) => const ScreenSplash(),
  Routes.login: (_) => const ScreenLogin(),
  Routes.signup: (_) => const ScreenSignUp(),
  Routes.forgetPassword: (_) => const ForgetPassword(),
  Routes.home: (_) => const HomePage(),
  Routes.music: (_) => const MusicPage(),
  Routes.stories: (_) => const StoriesPage(),
  Routes.mainLayout: (_) => const MainLayout(),
};
