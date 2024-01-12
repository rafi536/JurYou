import '../tukang_page/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';
import 'package:rafi_s_application3/widgets/custom_icon_button.dart';
import 'package:rafi_s_application3/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class TukangPage extends StatelessWidget {
  TukangPage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 11.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 54.v),
                          _buildSearchRow(context),
                          SizedBox(height: 67.v),
                          Padding(
                              padding: EdgeInsets.only(left: 55.h, right: 72.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("Tukang",
                                            style: CustomTextStyles
                                                .titleLargePrimarySemiBold)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtKategori(context);
                                        },
                                        child: Text("Kategori",
                                            style: CustomTextStyles
                                                .titleLargeSemiBold))
                                  ])),
                          SizedBox(height: 15.v),
                          Container(
                              height: 10.v,
                              width: 42.h,
                              margin: EdgeInsets.only(left: 69.h),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(5.h),
                                  border: Border.all(
                                      color: theme.colorScheme.primary,
                                      width: 1.h))),
                          SizedBox(height: 62.v),
                          _buildUserProfileList(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(bottom: 6.v),
              child: CustomSearchView(
                  controller: searchController, hintText: "Asep"))),
      Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: CustomIconButton(
              height: 82.v, width: 99.h, child: CustomImageView()))
    ]);
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 36.v);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return UserprofilelistItemWidget(onTapUserProfile: () {
                onTapUserProfile(context);
              });
            }));
  }

  /// Navigates to the profileTukangScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileTukangScreen);
  }

  /// Navigates to the kategoriTabContainerScreen when the action is triggered.
  onTapTxtKategori(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.kategoriTabContainerScreen);
  }
}
