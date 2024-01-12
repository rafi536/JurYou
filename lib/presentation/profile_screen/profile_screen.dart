import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/presentation/tukang_page/tukang_page.dart';
import 'package:rafi_s_application3/widgets/custom_bottom_bar.dart';
import 'package:rafi_s_application3/widgets/custom_icon_button.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildProfileSection(context),
              SizedBox(height: 39.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 44.h),
                  child: Text(
                    "GENERAL",
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 45.v),
              _buildProfileSettingSection(context),
              SizedBox(height: 63.v),
              _buildPrivacySection(context),
              SizedBox(height: 60.v),
              _buildNotificationsSection(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return SizedBox(
      height: 357.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 126.v),
              padding: EdgeInsets.symmetric(
                horizontal: 31.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder70,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 3.h,
                      bottom: 163.v,
                    ),
                    child: Text(
                      "Profile",
                      style: CustomTextStyles.headlineSmall25,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgPencilPutih1,
                    height: 33.v,
                    width: 32.h,
                    margin: EdgeInsets.only(
                      top: 6.v,
                      bottom: 154.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 31.h),
              padding: EdgeInsets.symmetric(
                horizontal: 82.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder70,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 12.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle12107x111,
                    height: 107.v,
                    width: 111.h,
                    radius: BorderRadius.circular(
                      50.h,
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "Lil Budi",
                    style: CustomTextStyles.titleLargePrimarySemiBold,
                  ),
                  SizedBox(height: 11.v),
                  Text(
                    "lilbudi@gmail.com",
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 25.v),
                  SizedBox(
                    width: 179.h,
                    child: Text(
                      "Jalan ABC, Kelurahan EFG, Kecamatan HIJ, Kota KLM",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileSettingSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder33,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 48.v,
            width: 50.h,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup35,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Text(
                    "Profile Setting",
                    style: CustomTextStyles.titleLargeOnPrimaryContainer,
                  ),
                ),
                Text(
                  "Update and modify your profile",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrivacySection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder33,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 48.v,
            width: 50.h,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup34,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Privacy ",
                  style: CustomTextStyles.titleLargeOnPrimaryContainer,
                ),
                Text(
                  "Change your password",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationsSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder33,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: CustomIconButton(
              height: 49.v,
              width: 50.h,
              padding: EdgeInsets.all(5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup22,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              top: 4.v,
              bottom: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Notifications",
                  style: CustomTextStyles.titleLargeOnPrimaryContainer,
                ),
                Text(
                  "Change your notifications setting",
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
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
