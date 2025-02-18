import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';

class CustomTabWidget extends StatelessWidget {
  const CustomTabWidget({
    Key? key,
    this.isSelected,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final bool? isSelected;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.sp,
        constraints: BoxConstraints.tightFor(height: 40.sp),
        decoration: BoxDecoration(
          color: isSelected != null
              ? isSelected != null && !isSelected!
                  ? AppColors.grey.withOpacity(0.3)
                  : null
              : AppColors.grey.withOpacity(0.3),
          gradient: isSelected != null && isSelected!
              ? AppColors.buttonGradient
              : null,
          borderRadius: BorderRadius.circular(24.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.w),
        margin: EdgeInsets.symmetric(horizontal: 4.w),
        child: Center(
          child: Text(
            title,
            style: TextStyling.medium.copyWith(
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
