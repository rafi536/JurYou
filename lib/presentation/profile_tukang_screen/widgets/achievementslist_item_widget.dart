import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class AchievementslistItemWidget extends StatelessWidget {
  const AchievementslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 49.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 7.v),
          Text(
            "THE WORKERS",
            style: theme.textTheme.displaySmall,
          ),
          SizedBox(height: 4.v),
          Text(
            "100 Order complete",
            style: CustomTextStyles.titleSmallGray50,
          ),
        ],
      ),
    );
  }
}
