import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/presentation/kategori_page/kategori_page.dart';
import 'package:rafi_s_application3/presentation/tukang_page/tukang_page.dart';
import 'package:rafi_s_application3/widgets/custom_bottom_bar.dart';
import 'package:rafi_s_application3/widgets/custom_icon_button.dart';
import 'package:rafi_s_application3/widgets/custom_search_view.dart';

class KategoriTabContainerScreen extends StatefulWidget {
  const KategoriTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KategoriTabContainerScreenState createState() =>
      KategoriTabContainerScreenState();
}

class KategoriTabContainerScreenState extends State<KategoriTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 52.v),
              _buildSearchRow(context),
              SizedBox(height: 69.v),
              Container(
                height: 38.v,
                width: 320.h,
                child: TabBar(
                  controller: tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: theme.colorScheme.primary.withOpacity(1),
                  labelStyle: TextStyle(
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: theme.colorScheme.primary,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                  ),
                  indicatorColor: theme.colorScheme.onPrimaryContainer,
                  tabs: [
                    Tab(
                      child: Text(
                        "Tukang",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Kategori",
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 615.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      KategoriPage(),
                      KategoriPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomSearchView(
              controller: searchController,
              hintText: "I",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 21.h,
                vertical: 13.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 51.v,
              width: 59.h,
              child: CustomImageView(),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
