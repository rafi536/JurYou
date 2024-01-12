import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget({
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 4.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlinePrimary.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder44,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle1291x106,
              height: 91.v,
              width: 106.h,
              radius: BorderRadius.circular(
                45.h,
              ),
              margin: EdgeInsets.only(
                left: 2.h,
                top: 1.v,
                bottom: 1.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                children: [
                  Text(
                    "Asep Sunandar",
                    style: CustomTextStyles.titleLargePrimarySemiBold,
                  ),
                  SizedBox(height: 7.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blue500,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 9.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blue500,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 16.v,
                        width: 15.h,
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blue500,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blue500,
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 9.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            8.h,
                          ),
                          border: Border.all(
                            color: appTheme.blue500,
                            width: 1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "(4.0) / 217",
                          style: CustomTextStyles.titleLargePrimary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    height: 24.v,
                    width: 178.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 22.v,
                            width: 178.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer,
                              borderRadius: BorderRadius.circular(
                                11.h,
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
                          child: Text(
                            "Message",
                            style: CustomTextStyles.titleLargeGray50SemiBold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
