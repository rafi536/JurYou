import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/presentation/tukang_page/tukang_page.dart';
import 'package:rafi_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class TukangContainerScreen extends StatelessWidget {
  TukangContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.tukangPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Setting1:
        return AppRoutes.tukangPage;
      case BottomBarEnum.Logo1:
        return "/";
      case BottomBarEnum.Profile1:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.tukangPage:
        return TukangPage();
      default:
        return DefaultWidget();
    }
  }
}
