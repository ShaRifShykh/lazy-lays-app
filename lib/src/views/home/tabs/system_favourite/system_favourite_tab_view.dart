import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/custom_form_field.dart';
import 'package:starter_app/src/shared/custom_game_tab_widget.dart';
import 'package:starter_app/src/shared/custom_tab_widget.dart';
import 'package:starter_app/src/shared/hero_card.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';

class SystemFavouriteTabView extends StatelessWidget {
  const SystemFavouriteTabView({Key? key, required this.model})
      : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 10.w,
          right: 10.w,
          bottom: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHomeAppBar(
              onNotifications: model.onClickNotifications,
              onSettings: model.onClickSettings,
            ),
            VerticalSpacing(60.h),
            HeroCard(
              onTap: model.onClickPost,
            ),
            VerticalSpacing(20.h),
            SizedBox(
              height: 40.sp,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: model.systemFavoritetabs.length,
                itemBuilder: (context, index) => CustomTabWidget(
                  // isSelected: model.systemFavoriteSelectedTab == index,

                  onTap: () => model.onSystemFavoriteTabChanged(index),
                  title: model.systemFavoritetabs[index],
                ),
              ),
            ),
            VerticalSpacing(20.h),
            Text(
              'Games',
              style: TextStyling.bold.copyWith(
                fontSize: 24.sp,
              ),
            ),
            VerticalSpacing(10.h),
            SizedBox(
              // height: 40.sp,
              height: 65.sp,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: model.games.length,
                itemBuilder: (context, index) => CustomGameTabWidget(
                  isSelected: model.systemFavoriteSelectedTab == index,
                  onTap: () {},
                  title: model.games[index],
                ),
              ),
            ),
            VerticalSpacing(20.h),
            Text(
              'Arbitrage Calculator',
              style: TextStyling.bold.copyWith(
                fontSize: 24.sp,
              ),
            ),
            VerticalSpacing(4.h),
            Text(
              'Calculate your arbitrage bet now.',
              style: TextStyling.regular.copyWith(
                fontSize: 12.sp,
              ),
            ),
            VerticalSpacing(10.h),
            ArbitageCalculator(),
            VerticalSpacing(20.h),
            Text(
              'Top Leagues',
              style: TextStyling.bold.copyWith(
                fontSize: 24.sp,
              ),
            ),
            VerticalSpacing(10.h),
            SizedBox(
              height: 80.sp,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: model.leagures.length,
                itemBuilder: (context, index) => CustomLeagueWidget(
                  isSelected: model.systemFavoriteSelectedTab == index,
                  onTap: () => model.onSystemFavoriteTabChanged(index),
                  title: model.leagures[index],
                ),
              ),
            ),
            VerticalSpacing(20.h),
            Text(
              'Top Leagues',
              style: TextStyling.bold.copyWith(
                fontSize: 24.sp,
              ),
            ),
            VerticalSpacing(10.h),
            PromotionCard(),
          ],
        ),
      ),
    );
  }
}

class ArbitageCalculator extends StatelessWidget {
  const ArbitageCalculator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.sp,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        gradient: AppColors.arbitageCalculatorGradient,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Odds',
                  style: TextStyling.bold.copyWith(
                    fontSize: 20.sp,
                  ),
                ),
              ),
              HorizontalSpacing(20.w),
              Expanded(
                child: CustomFormField(
                  readOnly: true,
                  showLabel: false,
                  labelText: '+110',
                  isPassword: false,
                  validatorFunction: (v) {
                    // return ValidationUtils.validateEmail(v);
                  },
                  primaryColor: AppColors.white,
                  textColor: AppColors.white,
                  isLabelCenter: false,
                  textFieldBgColor: AppColors.white.withOpacity(0.2),
                ),
              ),
              HorizontalSpacing(20.w),
              Expanded(
                child: CustomFormField(
                  readOnly: true,
                  labelText: '+110',
                  showLabel: false,
                  isPassword: false,
                  validatorFunction: (v) {
                    // return ValidationUtils.validateEmail(v);
                  },
                  primaryColor: AppColors.white,
                  textColor: AppColors.white,
                  isLabelCenter: false,
                  textFieldBgColor: AppColors.white.withOpacity(0.2),
                ),
              ),
            ],
          ),
          VerticalSpacing(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Stake',
                  style: TextStyling.bold.copyWith(
                    fontSize: 20.sp,
                  ),
                ),
              ),
              HorizontalSpacing(20.w),
              Expanded(
                child: CustomFormField(
                  prefixWidget: Container(
                    margin: EdgeInsets.only(right: 4.w),
                    decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(4.w),
                    child: Text(
                      // Icons.currency_rupee,
                      // color: AppColors.white,
                      // size: 12.sp,
                      '\$',
                      style: TextStyling.bold.copyWith(fontSize: 12.sp),
                    ),
                  ),
                  labelText: '110',
                  isPassword: false,
                  validatorFunction: (v) {
                    // return ValidationUtils.validateEmail(v);
                  },
                  primaryColor: AppColors.white,
                  textColor: AppColors.white,
                  isLabelCenter: false,
                  textFieldBgColor: AppColors.white.withOpacity(0.2),
                  showLabel: false,
                ),
              ),
              HorizontalSpacing(20.w),
              Expanded(
                child: CustomFormField(
                  prefixWidget: Container(
                    margin: EdgeInsets.only(right: 4.w),
                    decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(4.w),
                    child: Text(
                      // Icons.currency_rupee,
                      // color: AppColors.white,
                      // size: 12.sp,
                      '\$',
                      style: TextStyling.bold.copyWith(fontSize: 12.sp),
                    ),
                  ),
                  labelText: '110',
                  isPassword: false,
                  validatorFunction: (v) {
                    // return ValidationUtils.validateEmail(v);
                  },
                  primaryColor: AppColors.white,
                  textColor: AppColors.white,
                  isLabelCenter: false,
                  textFieldBgColor: AppColors.white.withOpacity(0.2),
                  showLabel: false,
                ),
              ),
            ],
          ),
          VerticalSpacing(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Payout',
                  style: TextStyling.bold.copyWith(
                    fontSize: 20.sp,
                  ),
                ),
              ),
              HorizontalSpacing(20.w),
              Expanded(
                child: CustomFormField(
                  prefixWidget: Container(
                    margin: EdgeInsets.only(right: 4.w),
                    decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(4.w),
                    child: Text(
                      // Icons.currency_rupee,
                      // color: AppColors.white,
                      // size: 12.sp,
                      '\$',
                      style: TextStyling.bold.copyWith(fontSize: 12.sp),
                    ),
                  ),
                  labelText: '110',
                  isPassword: false,
                  validatorFunction: (v) {
                    // return ValidationUtils.validateEmail(v);
                  },
                  primaryColor: AppColors.white,
                  textColor: AppColors.white,
                  isLabelCenter: false,
                  textFieldBgColor: AppColors.white.withOpacity(0.2),
                  showLabel: false,
                ),
              ),
              HorizontalSpacing(20.w),
              Expanded(
                child: CustomFormField(
                  prefixWidget: Container(
                    margin: EdgeInsets.only(right: 4.w),
                    decoration: BoxDecoration(
                      color: Colors.green.shade800,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(4.w),
                    child: Text(
                      // Icons.currency_rupee,
                      // color: AppColors.white,
                      // size: 12.sp,
                      '\$',
                      style: TextStyling.bold.copyWith(fontSize: 12.sp),
                    ),
                  ),
                  labelText: '110',
                  isPassword: false,
                  validatorFunction: (v) {
                    // return ValidationUtils.validateEmail(v);
                  },
                  primaryColor: AppColors.white,
                  textColor: AppColors.white,
                  isLabelCenter: false,
                  textFieldBgColor: AppColors.white.withOpacity(0.2),
                  showLabel: false,
                ),
              ),
            ],
          ),
          VerticalSpacing(30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Stake',
                      style: TextStyling.medium.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    Text(
                      '\$0.00',
                      style: TextStyling.extraBold.copyWith(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total payout',
                      style: TextStyling.medium.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    Text(
                      '\$0.00',
                      style: TextStyling.extraBold.copyWith(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Profit',
                      style: TextStyling.medium.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.lightGrey,
                      ),
                    ),
                    Text(
                      '\$0.00',
                      style: TextStyling.extraBold.copyWith(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomLeagueWidget extends StatelessWidget {
  const CustomLeagueWidget({
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
      child: Container(
        height: 80.sp,
        width: 80.sp,
        decoration: BoxDecoration(
          color: AppColors.appGreenAccent,
          borderRadius: BorderRadius.circular(16.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.w),
        margin: EdgeInsets.symmetric(horizontal: 4.w),
        child: Center(
          child: Image.asset(
            title,
            height: 50.sp,
          ),
        ),
      ),
    );
  }
}

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
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
                      'Lays on Auto-Pilot, Wins on repeat.',
                      style: TextStyling.extraBold.copyWith(
                        fontSize: 18.sp,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    Text(
                      'Get premium now.',
                      style: TextStyling.regular.copyWith(
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset(AssetImages.systemFavGiftBg).image,
                    ),
                  ),
                  padding: EdgeInsets.all(12.w),
                  child: Image.asset(AssetImages.gift),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    Key? key,
    required this.onSettings,
    required this.onNotifications,
  }) : super(key: key);

  final VoidCallback onSettings;
  final VoidCallback onNotifications;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AssetIcons.logo,
            height: 40.h,
          ),
          // HorizontalSpacing(20.w),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello User',
                style: TextStyling.bold.copyWith(fontSize: 20.sp),
              ),
              VerticalSpacing(2.h),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Welcome back to ',
                  style: TextStyling.regular.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: 'LazyLays',
                      style: TextStyling.bold.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.appLightGreen,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(flex: 4),
          Row(
            children: [
              IconButton(
                onPressed: onSettings,
                icon: Icon(Icons.settings),
                constraints: BoxConstraints(),
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
              ),
              IconButton(
                onPressed: onNotifications,
                icon: Icon(Icons.notifications),
                constraints: BoxConstraints(),
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
