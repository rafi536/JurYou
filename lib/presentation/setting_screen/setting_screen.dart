import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/presentation/tukang_page/tukang_page.dart';
import 'package:rafi_s_application3/widgets/custom_bottom_bar.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSettingColumn(context),
              SizedBox(height: 65.v),
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
              SizedBox(height: 20.v),
              _buildProfileRow(context),
              SizedBox(height: 28.v),
              _buildNotificationRow(context),
              SizedBox(height: 28.v),
              _buildLanguageRow(context),
              SizedBox(height: 28.v),
              _buildLogoutRow(context),
              SizedBox(height: 26.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 44.h),
                  child: Text(
                    "FEEDBACK",
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              _buildFeedbackRow(context),
              SizedBox(height: 28.v),
              _buildReportRow(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarColumn(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder38,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 49.v),
          Text(
            "Setting",
            style: theme.textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup35,
            height: 29.v,
            width: 32.h,
            margin: EdgeInsets.only(bottom: 5.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 5.v,
              bottom: 9.v,
            ),
            child: Text(
              "Account",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgLeftArrow1,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 2.h,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup22,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              bottom: 5.v,
            ),
            child: Text(
              "Notification",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgLeftArrow1,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBahasa1,
            height: 30.adaptSize,
            width: 30.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Text(
              "Language",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgLeftArrow1,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              right: 1.h,
              bottom: 6.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogoutRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgKeluar1,
            height: 35.adaptSize,
            width: 35.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 7.v,
              bottom: 9.v,
            ),
            child: Text(
              "Logout",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgLeftArrow1,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 9.v,
              right: 3.h,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedbackRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogo2,
            height: 29.v,
            width: 24.h,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 23.h,
              top: 2.v,
              bottom: 8.v,
            ),
            child: Text(
              "Send feedback",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgLeftArrow1,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReportRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 31.h),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder29,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgReport1,
            height: 31.adaptSize,
            width: 31.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 5.v,
              bottom: 7.v,
            ),
            child: Text(
              "Report a bug",
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgLeftArrow1,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 1.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarColumn(BuildContext context) {
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
