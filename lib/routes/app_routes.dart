import 'package:flutter/material.dart';
import 'package:rafi_s_application3/presentation/loading_screen/loading_screen.dart';
import 'package:rafi_s_application3/presentation/login_screen/login_screen.dart';
import 'package:rafi_s_application3/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:rafi_s_application3/presentation/home_screen/home_screen.dart';
import 'package:rafi_s_application3/presentation/tukang_container_screen/tukang_container_screen.dart';
import 'package:rafi_s_application3/presentation/kategori_tab_container_screen/kategori_tab_container_screen.dart';
import 'package:rafi_s_application3/presentation/profile_screen/profile_screen.dart';
import 'package:rafi_s_application3/presentation/setting_screen/setting_screen.dart';
import 'package:rafi_s_application3/presentation/profile_tukang_screen/profile_tukang_screen.dart';
import 'package:rafi_s_application3/presentation/chat_screen/chat_screen.dart';
import 'package:rafi_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loadingScreen = '/loading_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String homeScreen = '/home_screen';

  static const String tukangPage = '/tukang_page';

  static const String tukangContainerScreen = '/tukang_container_screen';

  static const String kategoriPage = '/kategori_page';

  static const String kategoriTabContainerScreen =
      '/kategori_tab_container_screen';

  static const String profileScreen = '/profile_screen';

  static const String settingScreen = '/setting_screen';

  static const String profileTukangScreen = '/profile_tukang_screen';

  static const String chatScreen = '/chat_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loadingScreen: (context) => LoadingScreen(),
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    homeScreen: (context) => HomeScreen(),
    tukangContainerScreen: (context) => TukangContainerScreen(),
    kategoriTabContainerScreen: (context) => KategoriTabContainerScreen(),
    profileScreen: (context) => ProfileScreen(),
    settingScreen: (context) => SettingScreen(),
    profileTukangScreen: (context) => ProfileTukangScreen(),
    chatScreen: (context) => ChatScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
