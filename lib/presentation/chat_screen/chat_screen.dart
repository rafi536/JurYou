import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/presentation/tukang_page/tukang_page.dart';
import 'package:rafi_s_application3/widgets/custom_bottom_bar.dart';
import 'package:rafi_s_application3/widgets/custom_icon_button.dart';
import 'package:rafi_s_application3/widgets/custom_text_form_field.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController placeholderController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildCircleImage(context),
              SizedBox(height: 49.v),
              Container(
                height: 77.v,
                width: 272.h,
                margin: EdgeInsets.only(right: 20.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.h),
                    topRight: Radius.circular(50.h),
                    bottomLeft: Radius.circular(50.h),
                  ),
                  border: Border.all(
                    color: theme.colorScheme.primary,
                    width: 1.h,
                  ),
                ),
              ),
              SizedBox(height: 56.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 49.v,
                  width: 272.h,
                  margin: EdgeInsets.only(left: 23.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray300,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.h),
                      topRight: Radius.circular(50.h),
                      bottomRight: Radius.circular(50.h),
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60.v),
              Container(
                height: 51.v,
                width: 227.h,
                margin: EdgeInsets.only(right: 20.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.h),
                    topRight: Radius.circular(50.h),
                    bottomLeft: Radius.circular(50.h),
                  ),
                  border: Border.all(
                    color: theme.colorScheme.primary,
                    width: 1.h,
                  ),
                ),
              ),
              SizedBox(height: 65.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 95.v,
                  width: 303.h,
                  margin: EdgeInsets.only(left: 23.h),
                  decoration: BoxDecoration(
                    color: appTheme.gray300,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.h),
                      topRight: Radius.circular(50.h),
                      bottomRight: Radius.circular(50.h),
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary,
                      width: 1.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40.v),
              Container(
                height: 51.v,
                width: 159.h,
                margin: EdgeInsets.only(right: 26.h),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onPrimaryContainer,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.h),
                    topRight: Radius.circular(50.h),
                    bottomLeft: Radius.circular(50.h),
                  ),
                  border: Border.all(
                    color: theme.colorScheme.primary,
                    width: 1.h,
                  ),
                ),
              ),
              SizedBox(height: 40.v),
              _buildChatRow(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCircleImage(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineSecondaryContainer1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 13.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse25,
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    radius: BorderRadius.circular(
                      35.h,
                    ),
                    margin: EdgeInsets.only(bottom: 5.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 15.v,
                      bottom: 15.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Asep bekok",
                          style: CustomTextStyles.titleLargeOnPrimary,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "ONLINE",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelfon1,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    margin: EdgeInsets.only(
                      left: 17.h,
                      top: 42.v,
                      bottom: 5.v,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgVc1,
                    height: 37.adaptSize,
                    width: 37.adaptSize,
                    margin: EdgeInsets.only(top: 38.v),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgOther1,
            height: 29.adaptSize,
            width: 29.adaptSize,
            margin: EdgeInsets.only(
              left: 22.h,
              top: 54.v,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChatRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 23.h,
          right: 20.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 47.v,
              width: 315.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 75.h),
                      child: Text(
                        "4.5 Ratings above",
                        style: CustomTextStyles.titleSmallGray50,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                    width: 315.h,
                    controller: placeholderController,
                    hintText: "Type here",
                    hintStyle: CustomTextStyles.titleMediumPrimary,
                    textInputAction: TextInputAction.done,
                    alignment: Alignment.center,
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(23.h, 14.v, 10.h, 13.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgHappy1,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: 47.v,
                    ),
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 12.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLink1,
                        height: 20.v,
                        width: 19.h,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 47.v,
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 14.v),
                    borderDecoration:
                        TextFormFieldStyleHelper.outlinePrimaryTL25,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: CustomIconButton(
                height: 46.adaptSize,
                width: 46.adaptSize,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.fillOnPrimaryContainer,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup4,
                ),
              ),
            ),
          ],
        ),
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
