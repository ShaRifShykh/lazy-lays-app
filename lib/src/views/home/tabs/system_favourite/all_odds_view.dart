// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/custom_form_field.dart';
import 'package:starter_app/src/shared/custom_game_tab_widget.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';

class AllOddsView extends StatelessWidget {
  AllOddsView({Key? key}) : super(key: key);

  final model = HomeViewModel();
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
            ),
            VerticalSpacing(10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Games',
                style: TextStyling.bold.copyWith(
                  fontSize: 24.sp,
                ),
              ),
            ),
            VerticalSpacing(20.h),
            SizedBox(
              height: 65.sp,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: model.games.length,
                itemBuilder: (context, index) => CustomGameTabWidget(
                  isSelected: model.allSportsGameSelectedTab == index,
                  onTap: () {
                    model.onAllSportsGameTabChanged(index);
                  },
                  title: model.games[index],
                ),
              ),
            ),
            VerticalSpacing(20.h),
            FilterRow(model: model),
            VerticalSpacing(10.h),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                // padding: EdgeInsets.symmetric(horizontal: 20.w),
                itemCount: 10,
                separatorBuilder: (context, index) => VerticalSpacing(15.h),
                itemBuilder: (context, index) {
                  return GameOddCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GameOddCard extends StatelessWidget {
  const GameOddCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GameOddCardHeader(),
          VerticalSpacing(4.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 10.h,
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: AppColors.black,
                ),
                bottom: BorderSide(
                  color: AppColors.black,
                ),
              ),
            ),
            child: Column(
              children: [
                GameOddCardLogoRow(),
                VerticalSpacing(10.h),
                GameOddCardRowWithViewAllButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GameOddCardRowWithViewAllButton extends StatelessWidget {
  const GameOddCardRowWithViewAllButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '20:00',
                  style: TextStyling.bold.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.appLightGreen,
                  ),
                ),
                Image.asset(
                  AssetImages.skySports,
                  height: 17.h,
                )
              ],
            ),
            HorizontalSpacing(10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Newyork',
                  style: TextStyling.medium.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.lightGrey.withOpacity(0.8),
                  ),
                ),
                Text(
                  'Philadelphia',
                  style: TextStyling.medium.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.lightGrey.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
        TextButton(
          onPressed: () {
            NavService.allOddsDetail();
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            textStyle: TextStyling.medium.copyWith(
              fontSize: 13.sp,
              color: AppColors.appLightGreen,
            ),
          ),
          child: Text('View All Odds >'),
        )
      ],
    );
  }
}

class GameOddCardLogoRow extends StatelessWidget {
  const GameOddCardLogoRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.r),
                color: AppColors.white,
                image: DecorationImage(
                  image: Image.asset(
                    AssetImages.americanEagle,
                    height: 30.h,
                  ).image,
                  alignment: Alignment.center,
                ),
              ),
            ),
            HorizontalSpacing(10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'American League',
                  style: TextStyling.semiBold.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  'Friday, 2nd Feb 2024',
                  style: TextStyling.medium.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.lightGrey.withOpacity(0.8),
                  ),
                )
              ],
            )
          ],
        ),
        Row(
          children: [
            ElevatedInfoBox(),
            HorizontalSpacing(16.w),
            ElevatedInfoBox(),
            HorizontalSpacing(16.w),
            ElevatedInfoBox(),
          ],
        )
      ],
    );
  }
}

class GameOddCardHeader extends StatelessWidget {
  const GameOddCardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Home',
            style: TextStyling.medium.copyWith(
              fontSize: 13.sp,
              color: AppColors.appLightGreen,
            ),
          ),
          HorizontalSpacing(
            22.w,
          ),
          Text(
            'Draw',
            style: TextStyling.medium.copyWith(
              fontSize: 13.sp,
              color: AppColors.appLightGreen,
            ),
          ),
          HorizontalSpacing(
            22.w,
          ),
          Text(
            'Away',
            style: TextStyling.medium.copyWith(
              fontSize: 13.sp,
              color: AppColors.appLightGreen,
            ),
          ),
        ],
      ),
    );
  }
}

class ElevatedInfoBox extends StatelessWidget {
  const ElevatedInfoBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: AppColors.grey.withOpacity(0.3),
      borderRadius: BorderRadius.circular(9.r),
      child: SizedBox(
        height: 38.h,
        width: 42.w,
        child: Center(
          child: Text(
            '+114',
            style: TextStyling.bold.copyWith(
              fontSize: 13.sp,
            ),
          ),
        ),
      ),
    );
  }
}

class FilterRow extends StatelessWidget {
  const FilterRow({
    Key? key,
    required this.model,
  }) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Text(
              'Game Odds',
              style: TextStyling.semiBold.copyWith(
                fontSize: 24.sp,
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 3,
            child: Material(
              elevation: 3,
              type: MaterialType.card,
              borderRadius: BorderRadius.circular(24.r),
              color: AppColors.grey.withOpacity(0.3),
              child: DropdownButtonFormField<String>(
                style: TextStyling.medium.copyWith(
                  fontSize: 14.sp,
                ),
                padding: EdgeInsets.zero,
                borderRadius: BorderRadius.circular(40.r),
                elevation: 3,
                dropdownColor: AppColors.appSecondaryBlack,
                icon: Padding(
                  padding: EdgeInsets.only(
                    bottom: 6.h,
                  ),
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.white,
                      size: 16.sp,
                    ),
                  ),
                ),
                decoration: InputDecoration(
                  constraints: BoxConstraints(),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 0.h,
                  ),
                  filled: true,
                  fillColor: AppColors.grey.withOpacity(0.3),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(
                      24.r,
                    ),
                  ),
                ),
                items: model.timeFilter
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                value: model.timeFilter.first,
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
