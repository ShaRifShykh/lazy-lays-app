import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';

class CustomGameTabWidget extends StatelessWidget {
  const CustomGameTabWidget({
    Key? key,
    required this.isSelected,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final bool isSelected;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 60.sp,
        width: 60.sp,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 45.sp,
              width: 45.sp,
              decoration: BoxDecoration(
                color: !isSelected ? AppColors.grey.withOpacity(0.3) : null,
                gradient: isSelected ? AppColors.buttonGradient : null,
                shape: BoxShape.circle,
              ),
              // padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
              // margin: EdgeInsets.symmetric(horizontal: 4.w),
              child: Center(
                child: SvgPicture.asset(
                  AssetIcons.navAllSports,
                  height: 24.h,
                  color: AppColors.lightGrey,
                ),
              ),
            ),
            VerticalSpacing(4.h),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyling.medium.copyWith(
                fontSize: 11.sp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
