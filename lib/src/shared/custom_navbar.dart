import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChange;
  const CustomBottomNavBar(
      {Key? key, required this.selectedIndex, required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      width: context.screenSize().width,
      decoration: BoxDecoration(
        color: AppColors.appBottomNavarBg.withOpacity(1),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(12.r),
          topLeft: Radius.circular(12.r),
        ),
      ),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + 10.h,
        top: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _item(
            "System Favorite",
            FontAwesomeIcons.star,
            selectedIndex == 0,
            () {
              onChange(0);
            },
          ),
          _item(
            "Search",
            FontAwesomeIcons.magnifyingGlass,
            (selectedIndex == 1) ? true : false,
            () {
              onChange(1);
            },
          ),
          _item(
            "All Sports",
            FontAwesomeIcons.trophy,
            (selectedIndex == 2) ? true : false,
            () {
              onChange(2);
            },
          ),
          _item(
            "Arbitage Betting",
            FontAwesomeIcons.coins,
            (selectedIndex == 3) ? true : false,
            () {
              onChange(3);
            },
          ),
          _item(
            "W/L",
            FontAwesomeIcons.medal,
            (selectedIndex == 4) ? true : false,
            () {
              onChange(4);
            },
          ),
        ],
      ),
    );
  }

  _item(String title, IconData icon, bool isSelected, Function onTap) {
    return Expanded(
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            (isSelected)
                ? Container(
                    // decoration: BoxDecoration(
                    //     color: AppColors.white, shape: BoxShape.circle),
                    // padding: EdgeInsets.fromLTRB(12, 12, 15, 12),
                    child: Center(
                      child: Icon(
                        icon,
                        size: 20.w,
                        color: AppColors.white,
                      ),
                    ),
                  )
                : Icon(
                    icon,
                    size: 20.w,
                    color: AppColors.grey,
                  ),
            VerticalSpacing(10.h),
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyling.bold.copyWith(
                  color: isSelected ? AppColors.white : AppColors.grey,
                  fontSize: 10.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
