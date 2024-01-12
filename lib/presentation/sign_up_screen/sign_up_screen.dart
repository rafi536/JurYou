import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:rafi_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:rafi_s_application3/widgets/custom_outlined_button.dart';
import 'package:rafi_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 37.h, top: 69.v, right: 37.h),
                            child: Column(children: [
                              SizedBox(
                                  height: 140.v,
                                  width: 103.h,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
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
                              SizedBox(height: 28.v),
                              Text("Create your account",
                                  style: CustomTextStyles
                                      .titleLargePrimaryRegular),
                              SizedBox(height: 28.v),
                              _buildEmail(context),
                              SizedBox(height: 23.v),
                              _buildPassword(context),
                              SizedBox(height: 15.v),
                              _buildConfirmPassword(context),
                              SizedBox(height: 21.v),
                              _buildSignIn(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrow1,
            margin: EdgeInsets.fromLTRB(26.h, 14.v, 358.h, 14.v),
            onTap: () {
              onTapArrowOne(context);
            }));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 20.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmPassword(BuildContext context) {
    return CustomTextFormField(
        controller: confirmPasswordController,
        hintText: "Confirm Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return CustomOutlinedButton(
        text: "Sign in",
        onPressed: () {
          onTapSignIn(context);
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapArrowOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
