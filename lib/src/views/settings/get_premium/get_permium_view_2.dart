//GET premium screen with pink shopping bag image.

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/settings/get_premium/get_premium_view_model.dart';

class GetPremiumView2 extends StackedView<GetPremiumViewModel> {
  @override
  Widget builder(
      BuildContext context, GetPremiumViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: Column(
          children: [
            CustomAppBar(
              showBackButton: false,
              trailingWidget: SizedBox(),
              showSettings: false,
              showNotification: false,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Text(
                        'Get Premium',
                        style: TextStyling.semiBold.copyWith(
                          fontSize: 32.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    Center(
                      child: Text(
                        'Unlock all the power of LazyLays and bet lika a pro.',
                        style: TextStyling.regular.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    Container(
                      height: 220.h,
                      width: 220.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: Image.asset(
                            AssetImages.premium2Bg,
                            height: 140.h,
                          ).image,
                        ),
                      ),
                      padding: EdgeInsets.all(30.h),
                      child: Image.asset(
                        AssetImages.premium2Image,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    Text(
                      'LazyLays - Tier 1',
                      style: TextStyling.bold,
                    ),
                    VerticalSpacing(10.h),
                    BestValueCard(),
                    VerticalSpacing(10.h),
                    RegularCard(),
                    VerticalSpacing(20.h),
                    Text(
                      'LazyLays - Tier 2',
                      style: TextStyling.bold,
                    ),
                    VerticalSpacing(10.h),
                    BestValueCard(),
                    VerticalSpacing(10.h),
                    RegularCard(),
                    VerticalSpacing(20.h),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Start 7-day free trial',
                        style: TextStyling.medium.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.appLightGreen,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.grey.withOpacity(0.6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        padding: EdgeInsets.all(15.w),
                      ),
                    ),
                    VerticalSpacing(10.h),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'By placing this order, you agree to the ',
                        style: TextStyling.regular.copyWith(
                          fontSize: 11.sp,
                          color: AppColors.grey.withOpacity(0.5),
                        ),
                        children: [
                          TextSpan(
                            text: 'Terms of Service & Privacy Policy',
                            style: TextStyling.semiBold.copyWith(
                              fontSize: 11.sp,
                              color: AppColors.appLightGreen,
                            ),
                          ),
                          TextSpan(
                            text:
                                '. Subscription automatically renews unless auto-renew is turned off at least 24-hours before the end of the current period.',
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  GetPremiumViewModel viewModelBuilder(BuildContext context) =>
      GetPremiumViewModel();

  @override
  void onViewModelReady(GetPremiumViewModel model) => model.init();
}

class BestValueCard extends StatelessWidget {
  const BestValueCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      decoration: BoxDecoration(
        gradient: AppColors.onboardingBgGradient,
        borderRadius: BorderRadius.circular(16.r),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Annual',
                style: TextStyling.bold.copyWith(
                  fontSize: 18.sp,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.appLightGreen.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.w),
                child: Text(
                  'Best value',
                  style: TextStyling.medium.copyWith(
                    fontSize: 10.sp,
                  ),
                ),
              )
            ],
          ),
          VerticalSpacing(4.h),
          Text(
            '\$99/Year',
            style: TextStyling.regular.copyWith(
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}

class RegularCard extends StatelessWidget {
  const RegularCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.white),
        color: AppColors.grey.withOpacity(0.2),
      ),
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Monthly',
            style: TextStyling.bold.copyWith(
              fontSize: 18.sp,
              color: AppColors.appPink,
            ),
          ),
          VerticalSpacing(4.h),
          Text(
            '\$99/Year',
            style: TextStyling.regular.copyWith(
              fontSize: 14.sp,
              color: AppColors.appPink,
            ),
          ),
        ],
      ),
    );
  }
}
