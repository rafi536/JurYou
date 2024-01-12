import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/widgets/custom_outlined_button.dart';
import 'package:rafi_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            body: Center(
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 37.h, vertical: 65.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Spacer(flex: 38),
                                  SizedBox(
                                      height: 140.v,
                                      width: 103.h,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLogo2x2,
                                                height: 116.v,
                                                width: 103.h,
                                                alignment: Alignment.topCenter),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text("JurYou",
                                                    style: CustomTextStyles
                                                        .titleLargeMontserratPrimary))
                                          ])),
                                  SizedBox(height: 74.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text("Login to your account",
                                              style: CustomTextStyles
                                                  .titleLargePrimaryRegular))),
                                  SizedBox(height: 12.v),
                                  CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Email",
                                      textInputType: TextInputType.emailAddress,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 19.h, vertical: 20.v)),
                                  SizedBox(height: 18.v),
                                  CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Password",
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      obscureText: true),
                                  SizedBox(height: 17.v),
                                  CustomOutlinedButton(
                                      text: "Sign in",
                                      onPressed: () {
                                        onTapSignIn(context);
                                      }),
                                  Spacer(flex: 61),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtDonthaveanaccount(context);
                                      },
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Don’t have an account ? ",
                                                style: CustomTextStyles
                                                    .titleLarge7f000000),
                                            TextSpan(
                                                text: "Sign Up",
                                                style: CustomTextStyles
                                                    .titleLargeff027fff)
                                          ]),
                                          textAlign: TextAlign.left))
                                ])))))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
