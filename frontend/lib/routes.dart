// pages
import 'package:flutter/material.dart';

import 'views/pages/music_page.dart';
import 'views/pages/stories_page.dart';

//screens
import 'views/screens/splash_screen.dart';
import 'views/screens/login_screen.dart';
import 'views/screens/signup_screen.dart';
import 'views/screens/forgetpassword_screen.dart';
import 'views/screens/confirmotp_screen.dart';
import 'views/screens/restartpassword_screen.dart';
import 'main_layout.dart';

// viewmodels

class Routes {
  //screens
  static const String splash = '/splash';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String forgetPassword = '/forgetPassword';
  static const String confirmOtp = '/confirmOtp';
  static const String restartPassword = '/restartPassword';

  //pages
  static const String home = '/home';
  static const String music = '/music';
  static const String stories = '/stories';
  static const String mainLayout = '/mainLayout';
}

Map<String, WidgetBuilder> appRoutes = {
  //screens
  Routes.splash: (_) => const ScreenSplash(),
  Routes.login: (_) => const ScreenLogin(),
  Routes.signup: (_) => const ScreenSignUp(),
  Routes.forgetPassword: (_) => const ForgetPassword(),
  Routes.confirmOtp: (_) => const ConfirmOtp(),
  Routes.restartPassword: (_) => const RestartPassword(),

  //pages
  Routes.music: (_) => const MusicPage(),
  Routes.stories: (_) => const StoriesPage(),
  Routes.mainLayout: (_) => const MainLayout(),

  //viewmodel
};
