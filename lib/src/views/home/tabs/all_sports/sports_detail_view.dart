import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';
import 'package:starter_app/src/views/home/tabs/wl/my_bets.dart';

class SportsDetailView extends StatelessWidget {
  const SportsDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              showBackButton: false,
              showNotification: true,
              showSettings: false,
              titleText: 'NBA',
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    AssetIcons.nbaBallIcon,
                    height: 15.w,
                    color: AppColors.lightGrey,
                  ),
                  HorizontalSpacing(2.w),
                  Text(
                    'NBA',
                    style: TextStyling.medium.copyWith(
                      fontSize: 20.sp,
                      color: AppColors.lightGrey,
                    ),
                  ),
                ],
              ),
            ),
            VerticalSpacing(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Games',
                    style: TextStyling.bold.copyWith(
                      fontSize: 24.sp,
                    ),
                  ),
                  VerticalSpacing(20.h),
                  FilterButtons(model: HomeViewModel()),
                  VerticalSpacing(20.h),
                  Text(
                    'Games',
                    style: TextStyling.bold.copyWith(
                      fontSize: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                  vertical: 20.h,
                ),
                separatorBuilder: (context, index) => VerticalSpacing(20.h),
                itemBuilder: (context, index) {
                  return Container(
                    height: 220.h,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: AppColors.gameDetailCardGradient,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.r),
                                topRight: Radius.circular(12.r),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Spacer(
                                      flex: 5,
                                    ),
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          //TODO: start from here.
                                          Text(
                                            'Spread',
                                            style: TextStyling.medium.copyWith(
                                              fontSize: 12.sp,
                                              color: AppColors.lightGrey
                                                  .withOpacity(0.8),
                                            ),
                                          ),
                                          Text(
                                            'Total',
                                            style: TextStyling.medium.copyWith(
                                              fontSize: 12.sp,
                                              color: AppColors.lightGrey
                                                  .withOpacity(0.8),
                                            ),
                                          ),
                                          Text(
                                            'Money',
                                            style: TextStyling.medium.copyWith(
                                              fontSize: 12.sp,
                                              color: AppColors.lightGrey
                                                  .withOpacity(0.8),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GameCardPictureWidget(),
                                    GameCardInfoWidget(),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GameCardPictureWidget(),
                                    GameCardInfoWidget(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 46.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                              bottomRight: Radius.circular(12.r),
                            ),
                            gradient: AppColors.arbitageCalculatorGradient,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.notifications_outlined,
                                color: AppColors.lightGrey.withOpacity(0.8),
                                size: 24.w,
                              ),
                              HorizontalSpacing(5.w),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Thursday, 7th February 24',
                                    style: TextStyling.regular.copyWith(
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                  Text(
                                    '5 am',
                                    style: TextStyling.regular.copyWith(
                                      fontSize: 8.sp,
                                      color: AppColors.lightGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 10,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GameCardInfoWidget extends StatelessWidget {
  const GameCardInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 45.h,
          width: 45.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.white.withOpacity(0.6),
            ),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Center(
            child: Text(
              '-4.5',
              style: TextStyling.bold.copyWith(
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
        HorizontalSpacing(10.w),
        Container(
          height: 45.h,
          width: 45.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.white.withOpacity(0.6),
            ),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Center(
            child: Text(
              '-4.5',
              style: TextStyling.bold.copyWith(
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
        HorizontalSpacing(10.w),
        Container(
          height: 45.h,
          width: 45.w,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.white.withOpacity(0.6),
            ),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Center(
            child: Text(
              '-4.5',
              style: TextStyling.bold.copyWith(
                fontSize: 16.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GameCardPictureWidget extends StatelessWidget {
  const GameCardPictureWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          AssetImages.bulls,
          height: 60.h,
        ),
        HorizontalSpacing(5.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bulls',
              style: TextStyling.semiBold.copyWith(
                fontSize: 18.sp,
              ),
            ),
            Text(
              '22-26',
              style: TextStyling.medium.copyWith(
                fontSize: 12.sp,
                color: AppColors.lightGrey.withOpacity(0.8),
              ),
            ),
          ],
        )
      ],
    );
  }
}
