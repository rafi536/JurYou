import 'package:flutter/material.dart';
import 'package:rafi_s_application3/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgSetting1,
      activeIcon: ImageConstant.imgSetting1,
      type: BottomBarEnum.Setting1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLogo1,
      activeIcon: ImageConstant.imgLogo1,
      type: BottomBarEnum.Logo1,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgProfile1,
      activeIcon: ImageConstant.imgProfile1,
      type: BottomBarEnum.Profile1,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97.v,
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45.h),
          topRight: Radius.circular(44.h),
          bottomLeft: Radius.circular(45.h),
          bottomRight: Radius.circular(44.h),
        ),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 46.v,
              width: 49.h,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 34.v,
              width: 36.h,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Setting1,
  Logo1,
  Profile1,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
