import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({Key? key, required this.onTap, this.gradientBg})
      : super(key: key);

  final VoidCallback onTap;
  final Gradient? gradientBg;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150.h - 24.w,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            gradient: gradientBg ?? AppColors.onboardingBgGradient,
          ),
          padding: EdgeInsets.all(8.w),
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lay of the Day',
                      style: TextStyling.medium.copyWith(
                        fontSize: 18.sp,
                      ),
                    ),
                    Text(
                      'The Winning Game...',
                      style: TextStyling.extraBold.copyWith(
                        fontSize: 18.sp,
                      ),
                    ),
                    VerticalSpacing(4.h),
                    InkWell(
                      onTap: onTap,
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward,
                            color: AppColors.lightGrey,
                            size: 24.sp,
                          ),
                          HorizontalSpacing(4.w),
                          Text(
                            'Read Now',
                            style: TextStyling.regular.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.lightGrey,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Spacer(flex: 4),
            ],
          ),
        ),
        Positioned(
          // alignment: Alignment.topRight,
          right: 0,
          top: -55.h,
          child: Image.asset(
            AssetImages.homeHeroPng,
            height: 180.h,
            width: 183.w,
            fit: BoxFit.cover,
            // height: 200.h,
          ),
        ),
      ],
    );
  }
}
