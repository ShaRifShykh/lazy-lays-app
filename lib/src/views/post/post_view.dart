import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/hero_card.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/post/post_view_model.dart';

class PostView extends StackedView<PostViewModel> {
  @override
  Widget builder(BuildContext context, PostViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: Column(
          children: [
            CustomAppBar(
              showBackButton: true,
              titleText: 'Lay Of The Day',
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                  bottom: 20.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // CustomAppBar(
                    //   showBackButton: true,
                    //   titleText: 'Lay Of The Day',
                    // ),
                    Text(
                      'Featured',
                      style: TextStyling.bold.copyWith(
                        fontSize: 24.sp,
                      ),
                    ),
                    VerticalSpacing(40.h),
                    HeroCard(
                      onTap: model.onClickPost,
                      gradientBg: AppColors.profileBgGradient,
                    ),
                    VerticalSpacing(20.h),
                    Text(
                      'Previous Lays',
                      style: TextStyling.bold.copyWith(
                        fontSize: 24.sp,
                      ),
                    ),
                    VerticalSpacing(40.h),
                    HeroCard(
                      onTap: model.onClickPost,
                      gradientBg: AppColors.promotionBannerGradient,
                    ),
                    VerticalSpacing(80.h),
                    HeroCard(
                      onTap: model.onClickPost,
                      gradientBg: AppColors.buttonGradient,
                    ),
                    VerticalSpacing(80.h),
                    HeroCard(
                      onTap: model.onClickPost,
                      gradientBg: AppColors.onboardingBgGradient,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  PostViewModel viewModelBuilder(BuildContext context) => PostViewModel();

  @override
  void onViewModelReady(PostViewModel model) => model.init();
}
