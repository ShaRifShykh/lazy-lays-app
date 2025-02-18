import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/models/betting_details_model.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/main_button.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';

class ArbitageBettingTabView extends StatelessWidget {
  const ArbitageBettingTabView({Key? key, required this.model})
      : super(key: key);

  final HomeViewModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize().height,
      width: context.screenSize().width,
      child: Column(
        children: [
          CustomAppBar(
            showBackButton: false,
            showNotification: true,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Arbitrage Calculator',
                    style: TextStyling.bold.copyWith(
                      fontSize: 24.sp,
                    ),
                  ),
                  VerticalSpacing(4.h),
                  Text(
                    'Explore potential opportunities for arbitrage betting across multiple bookmakers.',
                    style: TextStyling.medium.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.grey,
                    ),
                  ),
                  VerticalSpacing(20.h),
                  ArbitagePromotionBanner(model: model),
                  VerticalSpacing(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Live Arbitrage Bets',
                            style: TextStyling.bold.copyWith(
                              fontSize: 24.sp,
                            ),
                          ),
                          VerticalSpacing(4.h),
                          Text(
                            'Click on any record to bet now.',
                            style: TextStyling.medium.copyWith(
                              fontSize: 14.sp,
                              color: AppColors.grey,
                            ),
                          ),
                        ],
                      ),
                      HorizontalSpacing(10.w),
                      MainButton(
                        buttonText: 'Bet Now',
                        onPressed: () {},
                        isLoading: false,
                        padding: EdgeInsets.symmetric(
                          vertical: 8.w,
                          horizontal: 16.w,
                        ),
                        fullWidth: false,
                        fontSize: 14.sp,
                        height: 40.h,
                      ),
                    ],
                  ),
                  VerticalSpacing(20.h),
                  Container(
                    height: 360.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: AppColors.arbitageCalculatorGradient,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    padding: EdgeInsets.all(10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CardHeader(),
                        ...List.generate(
                          model.bets.length,
                          (index) => CardEntry(
                            bet: model.bets[index],
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalSpacing(20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upcoming Betting',
                        style: TextStyling.bold.copyWith(
                          fontSize: 24.sp,
                        ),
                      ),
                      VerticalSpacing(4.h),
                      Text(
                        'Check Upcoming bettings and never miss out any update.',
                        style: TextStyling.medium.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                  VerticalSpacing(20.h),
                  Container(
                    height: 360.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: AppColors.arbitageCalculatorGradient,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    padding: EdgeInsets.all(10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CardHeader(),
                        ...List.generate(
                          model.bets.length,
                          (index) => CardEntry(
                            bet: model.bets[index],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardHeader extends StatelessWidget {
  const CardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(
              '%',
              style: TextStyling.medium.copyWith(
                fontSize: 13.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          HorizontalSpacing(2.w),
          Expanded(
            child: Text(
              'Event Date',
              style: TextStyling.medium.copyWith(
                fontSize: 13.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          HorizontalSpacing(2.w),
          Expanded(
            child: Text(
              'Event',
              style: TextStyling.medium.copyWith(
                fontSize: 13.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          HorizontalSpacing(2.w),
          Expanded(
            child: Text(
              'Market',
              style: TextStyling.medium.copyWith(
                fontSize: 13.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          HorizontalSpacing(2.w),
          Expanded(
            child: Text(
              'Books',
              style: TextStyling.medium.copyWith(
                fontSize: 13.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class CardEntry extends StatelessWidget {
  final BettingDetailsModel bet;
  const CardEntry({
    Key? key,
    required this.bet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(
              bet.percentage,
              style: TextStyling.medium.copyWith(
                fontSize: 11.sp,
                color: AppColors.lightGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          HorizontalSpacing(2.w),
          Expanded(
            child: Text(
              bet.eventDate,
              style: TextStyling.medium.copyWith(
                fontSize: 11.sp,
                // color: AppColors.grey,
                color: AppColors.lightGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          HorizontalSpacing(2.w),
          Expanded(
            child: Text(
              bet.event,
              style: TextStyling.medium.copyWith(
                fontSize: 11.sp,
                // color: AppColors.grey,
                color: AppColors.lightGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          HorizontalSpacing(2.w),
          Expanded(
            child: Text(
              bet.market,
              style: TextStyling.medium.copyWith(
                fontSize: 11.sp,
                color: AppColors.lightGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          HorizontalSpacing(2.w),
          Expanded(
            child: Text(
              bet.books,
              style: TextStyling.medium.copyWith(
                fontSize: 11.sp,
                // color: AppColors.grey,
                color: AppColors.lightGrey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class ArbitagePromotionBanner extends StatelessWidget {
  const ArbitagePromotionBanner({
    Key? key,
    required this.model,
  }) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.r),
      child: SizedBox(
        height: 160.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              controller: model.arbitagePromotionController,
              itemBuilder: (context, index) {
                final promotion = model.arbitagePromotions[index];
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: AppColors.promotionBannerGradient,
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
                              promotion.title,
                              style: TextStyling.extraBold.copyWith(
                                fontSize: 18.sp,
                              ),
                            ),
                            VerticalSpacing(1.h),
                            Text(
                              promotion.description,
                              style: TextStyling.regular.copyWith(
                                fontSize: 12.sp,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.all(10.w),
                          child: Image.asset(
                            promotion.image,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: model.arbitagePromotions.length,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 10.h,
              ),
              child: SmoothPageIndicator(
                controller: model.arbitagePromotionController,
                count: model.arbitagePromotions.length,
                effect: WormEffect(
                  dotWidth: 10.w,
                  dotHeight: 10.w,
                  activeDotColor: AppColors.appLightGreen,
                  dotColor: AppColors.appPink.withOpacity(0.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
