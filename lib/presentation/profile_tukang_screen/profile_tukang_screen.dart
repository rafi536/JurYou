import '../profile_tukang_screen/widgets/achievementslist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/presentation/tukang_page/tukang_page.dart';
import 'package:rafi_s_application3/widgets/custom_bottom_bar.dart';
import 'package:rafi_s_application3/widgets/custom_icon_button.dart';
import 'package:rafi_s_application3/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ProfileTukangScreen extends StatelessWidget {
  ProfileTukangScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                height: 826.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle26,
                      height: 128.v,
                      width: 412.h,
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 31.h, vertical: 84.v),
                          decoration: AppDecoration.outlineSecondaryContainer
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder70),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 99.h),
                                    child: Text("Asep Johanson",
                                        style: CustomTextStyles
                                            .titleLargeOnPrimaryContainer)),
                                SizedBox(height: 9.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("ABC City, East java",
                                        style: CustomTextStyles
                                            .titleSmallBlack900)),
                                SizedBox(height: 14.v),
                                Container(
                                    width: 335.h,
                                    margin:
                                        EdgeInsets.only(left: 1.h, right: 12.h),
                                    child: Text(
                                        "with other skills from university, so I'm confident I can provide the best service.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleSmallBlack900Medium)),
                                SizedBox(height: 29.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 13.h, right: 23.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: CustomIconButton(
                                                      height: 49.adaptSize,
                                                      width: 49.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(7.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlinePrimaryTL24,
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup16))),
                                              CustomOutlinedButton(
                                                  height: 48.v,
                                                  width: 166.h,
                                                  text: "Message",
                                                  buttonStyle:
                                                      CustomButtonStyles
                                                          .outlinePrimaryTL23,
                                                  buttonTextStyle: CustomTextStyles
                                                      .titleLargeGray50SemiBold,
                                                  onPressed: () {
                                                    onTapMessage(context);
                                                  }),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 1.v),
                                                  child: CustomIconButton(
                                                      height: 49.adaptSize,
                                                      width: 49.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(9.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlinePrimaryTL24,
                                                      child: CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgReport1)))
                                            ]))),
                                SizedBox(height: 44.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 3.h, right: 18.h),
                                    child: Row(children: [
                                      Column(children: [
                                        Text("4.7",
                                            style: CustomTextStyles
                                                .titleLargeOnPrimaryContainer),
                                        Text("Ratings",
                                            textAlign: TextAlign.center,
                                            style: CustomTextStyles
                                                .titleSmallBlack900)
                                      ]),
                                      Spacer(flex: 19),
                                      SizedBox(
                                          height: 42.v,
                                          child: VerticalDivider(
                                              width: 2.h,
                                              thickness: 2.v,
                                              endIndent: 2.h)),
                                      Spacer(flex: 27),
                                      Column(children: [
                                        Text("159",
                                            style: CustomTextStyles
                                                .titleLargeOnPrimaryContainer),
                                        Text("Order",
                                            style: CustomTextStyles
                                                .titleSmallBlack900)
                                      ]),
                                      Spacer(flex: 27),
                                      SizedBox(
                                          height: 42.v,
                                          child: VerticalDivider(
                                              width: 2.h,
                                              thickness: 2.v,
                                              endIndent: 2.h)),
                                      Spacer(flex: 26),
                                      SizedBox(
                                          height: 40.v,
                                          width: 27.h,
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Text("4",
                                                        style: CustomTextStyles
                                                            .titleLargeOnPrimaryContainer)),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Text("Skill",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: CustomTextStyles
                                                            .titleSmallBlack900))
                                              ]))
                                    ])),
                                SizedBox(height: 62.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: Text("ACHIEVEMENTS",
                                        style: CustomTextStyles
                                            .titleLargeBlack900)),
                                SizedBox(height: 23.v),
                                _buildAchievementsList(context),
                                SizedBox(height: 12.v)
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgRectangle10118x128,
                      height: 118.v,
                      width: 128.h,
                      radius: BorderRadius.circular(50.h),
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 38.v))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildAchievementsList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 23.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return AchievementslistItemWidget();
            }));
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

  /// Navigates to the chatScreen when the action is triggered.
  onTapMessage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chatScreen);
  }
}
