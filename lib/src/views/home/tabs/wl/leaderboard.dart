import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    final Shader textGradient = LinearGradient(
      colors: <Color>[
        AppColors.appLightGreen,
        AppColors.appDarkGreen,
      ],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return Expanded(
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            ),
            child: Column(
              children: [
                VerticalSpacing(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Leaderboard',
                      style: TextStyling.semiBold.copyWith(
                        fontSize: 28.sp,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                VerticalSpacing(10.h),
                SizedBox(
                  height: 165.sp,
                  width: 165.sp,
                  child: CircleAvatar(
                    backgroundImage:
                        Image.asset(AssetImages.user, fit: BoxFit.cover).image,
                  ),
                ),
                VerticalSpacing(10.h),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppColors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      margin: EdgeInsets.symmetric(vertical: 8.h),
                      padding:
                          EdgeInsets.symmetric(vertical: 8.w, horizontal: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                '${index + 1}',
                                style: TextStyling.medium.copyWith(
                                  fontSize: 17.sp,
                                ),
                              ),
                              HorizontalSpacing(10.w),
                              Text(
                                'Name',
                                style: TextStyling.medium.copyWith(
                                  fontSize: 17.sp,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '+260%ROI',
                            style: TextStyling.extraBold.copyWith(
                              fontSize: 17.sp,
                              foreground: Paint()..shader = textGradient,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                VerticalSpacing(50.h),
              ],
            ),
          ),
          Positioned(
            right: 20.w,
            bottom: 10.h,
            child: InkWell(
              onTap: model.onClickChatButton,
              customBorder: CircleBorder(),
              child: Container(
                height: 60.sp,
                width: 60.sp,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: AppColors.buttonGradient,
                ),
                child: Image.asset(AssetImages.chatButtonIcon),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
