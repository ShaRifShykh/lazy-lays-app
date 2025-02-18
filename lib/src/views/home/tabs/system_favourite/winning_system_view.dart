import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/custom_form_field.dart';
import 'package:starter_app/src/shared/custom_game_tab_widget.dart';
import 'package:starter_app/src/shared/custom_tab_widget.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';

class WinningSystemView extends StatelessWidget {
  WinningSystemView({Key? key}) : super(key: key);

  final HomeViewModel model = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            titleText: 'Winning System',
            showBackButton: true,
            showNotification: true,
            showSettings: false,
          ),
          VerticalSpacing(20.h),
          Container(
            height: 65.sp,
            padding: EdgeInsets.only(
              left: 20.w,
            ),
            child: Row(
              children: [
                Text(
                  'Games',
                  style: TextStyling.semiBold.copyWith(
                    fontSize: 24.sp,
                  ),
                ),
                HorizontalSpacing(12.w),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: model.games.length,
                    itemBuilder: (context, index) => CustomGameTabWidget(
                      // isSelected:
                      //     model.systemFavoriteSelectedTab == index,
                      isSelected: false,
                      onTap: () {},
                      title: model.games[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
          VerticalSpacing(20.h),
          Container(
            height: 40.sp,
            padding: EdgeInsets.only(
              left: 20.w,
            ),
            child: Row(
              children: [
                Text(
                  'Market',
                  style: TextStyling.semiBold.copyWith(
                    fontSize: 24.sp,
                  ),
                ),
                HorizontalSpacing(12.w),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: model.moneyLines.length,
                    itemBuilder: (context, index) => CustomTabWidget(
                      isSelected: model.selectedMoneyLine == index,
                      onTap: () {
                        model.onMoneyLineTabChanged(index);
                      },
                      title: model.moneyLines[index],
                    ),
                  ),
                ),
              ],
            ),
          ),
          VerticalSpacing(15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: FilterButtons(model: model),
          ),
          VerticalSpacing(15.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'Featured System plays',
              style: TextStyling.semiBold.copyWith(
                fontSize: 24.sp,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => VerticalSpacing(30.h),
              padding: EdgeInsets.only(
                top: 10.h,
                bottom: 20.h,
                left: 20.w,
                right: 20.w,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    NavService.winningSystemDetail();
                  },
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 29.w,
                          height: 29.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.r),
                            color: AppColors.appPink,
                          ),
                          child: Center(
                            child: Text(
                              'A+',
                              style: TextStyling.semiBold.copyWith(
                                fontSize: 16.sp,
                                color: HexColor('#3B3B3B'),
                              ),
                            ),
                          ),
                        ),
                        VerticalSpacing(13.h),
                        TextBubble(
                          text:
                              '(NBA) MoneyLine: Home heavy underdogs coming off a loss in the 4th quarter',
                          showBubble: true,
                        ),
                        VerticalSpacing(3.h),
                        TextBubble(
                          text: '(NBA) MoneyLine: Spread Underdogs',
                        ),
                        VerticalSpacing(3.h),
                        TextBubble(
                          text: '(NBA) MoneyLine: West Home VS East',
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 20,
              shrinkWrap: true,
            ),
          ),
          // SheetHeader(),
          // SheetBodyRow(),
        ],
      ),
    );
  }
}

class TextBubble extends StatelessWidget {
  const TextBubble({
    Key? key,
    required this.text,
    this.showBubble = false,
  }) : super(key: key);

  final String text;
  final bool showBubble;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 10.h,
            horizontal: 20.w,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            color: AppColors.grey.withOpacity(0.3),
          ),
          child: Text(
            text,
            style: TextStyling.medium.copyWith(
              fontSize: 12.sp,
            ),
          ),
        ),
        if (showBubble)
          Positioned(
            top: -10,
            right: 0,
            child: Container(
              height: 20.sp,
              width: 20.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: AppColors.buttonGradient,
              ),
              child: Center(
                child: Text(
                  '1',
                  style: TextStyling.semiBold.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}

class FilterButtons extends StatelessWidget {
  const FilterButtons({
    Key? key,
    required this.model,
  }) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
                items: model.betFilter
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                value: model.betFilter.first,
                onChanged: (value) {},
              ),
            ),
          ),
          HorizontalSpacing(10.w),
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
                items: model.betFilter
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                value: model.betFilter.first,
                onChanged: (value) {},
              ),
            ),
          ),
          HorizontalSpacing(10.w),
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
                items: model.betFilter
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
                value: model.betFilter.first,
                onChanged: (value) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
