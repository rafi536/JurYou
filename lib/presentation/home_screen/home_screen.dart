import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/widgets/custom_outlined_button.dart';
import 'package:rafi_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 48.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: Text("Hi Budi",
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleLargePrimary_1)),
                        SizedBox(height: 32.v),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: CustomTextFormField(
                                width: 275.h,
                                controller: searchController,
                                hintText: "Search",
                                textInputAction: TextInputAction.done,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 30.h, vertical: 13.v),
                                borderDecoration: TextFormFieldStyleHelper
                                    .outlinePrimaryTL25)),
                        SizedBox(height: 61.v),
                        _buildElektronikSection(context),
                        SizedBox(height: 53.v),
                        CustomOutlinedButton(
                            height: 46.v,
                            text: "Tukang of the week",
                            margin: EdgeInsets.only(left: 5.h, right: 4.h),
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL23,
                            onPressed: () {
                              onTapTukangOfTheWeek(context);
                            }),
                        SizedBox(height: 53.v),
                        _buildSignUp(context)
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildElektronikSection(BuildContext context) {
    return SizedBox(
        height: 222.v,
        width: 382.h,
        child: Stack(alignment: Alignment.bottomRight, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin:
                      EdgeInsets.only(left: 19.h, right: 3.h, bottom: 134.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 38.h, vertical: 11.v),
                  decoration: AppDecoration.outlinePrimary
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder44),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 12.v, bottom: 27.v),
                            child: Text("Elektronik",
                                style: CustomTextStyles.titleLargePrimary_1)),
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle,
                            height: 55.v,
                            width: 81.h,
                            margin: EdgeInsets.only(top: 8.v, right: 9.h))
                      ]))),
          Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  margin: EdgeInsets.only(left: 22.h, top: 134.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 28.h, vertical: 1.v),
                  decoration: AppDecoration.outlinePrimary
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder44),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: 10.h, top: 24.v, bottom: 35.v),
                            child: Text("Cleaning Service",
                                style: CustomTextStyles.titleLargePrimary_1)),
                        CustomImageView(
                            imagePath: ImageConstant.imgCleaning1,
                            height: 81.v,
                            width: 101.h,
                            margin: EdgeInsets.only(top: 3.v))
                      ]))),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: 121.h,
                  margin: EdgeInsets.only(bottom: 32.v),
                  child: Text("Cleaning ",
                      maxLines: null,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.displayMediumPrimary)))
        ]));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return SizedBox(
        height: 340.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: 81.h,
                  margin: EdgeInsets.only(bottom: 100.v),
                  child: Text("Sign up",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayMedium))),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle4,
              height: 118.v,
              width: 412.h,
              alignment: Alignment.bottomCenter),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 42.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle12,
                                  height: 85.adaptSize,
                                  width: 85.adaptSize,
                                  radius: BorderRadius.circular(42.h)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle13,
                                  height: 85.adaptSize,
                                  width: 85.adaptSize,
                                  radius: BorderRadius.circular(42.h)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle14,
                                  height: 85.v,
                                  width: 84.h,
                                  radius: BorderRadius.circular(42.h))
                            ])),
                    SizedBox(height: 27.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle9,
                              height: 85.v,
                              width: 84.h,
                              radius: BorderRadius.circular(42.h)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle10,
                              height: 85.adaptSize,
                              width: 85.adaptSize,
                              radius: BorderRadius.circular(42.h)),
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle11,
                              height: 85.adaptSize,
                              width: 85.adaptSize,
                              radius: BorderRadius.circular(42.h))
                        ])
                  ])))
        ]));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapTukangOfTheWeek(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }
}
