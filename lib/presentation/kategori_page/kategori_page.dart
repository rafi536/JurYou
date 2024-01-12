import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class KategoriPage extends StatefulWidget {
  const KategoriPage({Key? key})
      : super(
          key: key,
        );

  @override
  KategoriPageState createState() => KategoriPageState();
}

class KategoriPageState extends State<KategoriPage>
    with AutomaticKeepAliveClientMixin<KategoriPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 73.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 14.h,
                    right: 5.h,
                  ),
                  child: Column(
                    children: [
                      _buildTvRepairRow(context),
                      SizedBox(height: 40.v),
                      _buildCleaningServiceRow(context),
                      SizedBox(height: 33.v),
                      _buildAcRepairStack(context),
                      SizedBox(height: 29.v),
                      _buildViewStack(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTvRepairRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 22.v,
              bottom: 74.v,
            ),
            child: Text(
              "TV Repair",
              style: CustomTextStyles.titleLargePrimary_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle,
            height: 96.v,
            width: 100.h,
            margin: EdgeInsets.only(top: 22.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCleaningServiceRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.outlinePrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 84.v,
            ),
            child: Text(
              "Cleaning Service",
              style: CustomTextStyles.titleLargePrimary_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCleaning1,
            height: 109.v,
            width: 116.h,
            margin: EdgeInsets.only(
              top: 6.v,
              right: 2.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAcRepairStack(BuildContext context) {
    return SizedBox(
      height: 124.v,
      width: 391.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 4.v),
              padding: EdgeInsets.symmetric(
                horizontal: 38.h,
                vertical: 23.v,
              ),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 25.v,
                      bottom: 22.v,
                    ),
                    child: Text(
                      "AC Repair",
                      style: CustomTextStyles.titleLargePrimary_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgAirConditioner,
                    height: 59.v,
                    width: 76.h,
                    margin: EdgeInsets.only(
                      top: 13.v,
                      right: 13.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLogo2x2,
            height: 68.v,
            width: 79.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 95.h,
              bottom: 24.v,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 97.h),
              child: Text(
                "JurYou",
                style: CustomTextStyles.titleLargeMontserratPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewStack(BuildContext context) {
    return SizedBox(
      height: 120.v,
      width: 391.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 20.v,
              width: 157.h,
              margin: EdgeInsets.only(
                right: 67.h,
                bottom: 16.v,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.primary,
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 36.h),
              decoration: AppDecoration.outlinePrimary.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 36.v,
                      bottom: 57.v,
                    ),
                    child: Text(
                      "Radio Repair",
                      style: CustomTextStyles.titleLargePrimary_1,
                    ),
                  ),
                  Container(
                    height: 90.v,
                    width: 156.h,
                    margin: EdgeInsets.only(top: 28.v),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRadio1,
                          height: 74.v,
                          width: 84.h,
                          alignment: Alignment.topRight,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Message",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ],
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
}
