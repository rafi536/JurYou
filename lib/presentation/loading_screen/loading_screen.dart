import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/widgets/custom_outlined_button.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 44.v),
                child: Column(children: [
                  Spacer(flex: 53),
                  SizedBox(
                      height: 140.v,
                      width: 103.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLogo2x2,
                            height: 116.v,
                            width: 103.h,
                            alignment: Alignment.topCenter),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("JurYou",
                                style: CustomTextStyles
                                    .titleLargeMontserratPrimary))
                      ])),
                  Spacer(flex: 46),
                  CustomOutlinedButton(
                      height: 41.v,
                      width: 127.h,
                      text: "GO",
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle: theme.textTheme.titleLarge!,
                      onPressed: () {
                        onTapGO(context);
                      },
                      alignment: Alignment.centerRight)
                ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapGO(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
