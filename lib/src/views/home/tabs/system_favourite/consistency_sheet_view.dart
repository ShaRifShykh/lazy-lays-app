import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/custom_game_tab_widget.dart';
import 'package:starter_app/src/shared/custom_tab_widget.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';

class ConsistencySheetView extends StatelessWidget {
  ConsistencySheetView({Key? key}) : super(key: key);
  final HomeViewModel model = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            titleText: 'Consistency Sheets',
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
              'Consistency Sheet',
              style: TextStyling.semiBold.copyWith(
                fontSize: 24.sp,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(
                top: 10.h,
                bottom: 20.h,
                left: 10.w,
                // right: 20.w,
              ),
              itemBuilder: (context, index) {
                if (index == 0) {
                  return SheetHeader();
                }
                return SheetBodyRow();
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

class SheetHeader extends StatelessWidget {
  const SheetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: HeaderTile(
            text: 'PLAYER',
            color: HexColor('#3B3B3B'),
          ),
        ),
        Expanded(
          child: HeaderTile(
            text: 'AVG',
            // color: AppColors.appPink.withOpacity(0.5),
            // color: HexColor('#A9DB97').withOpacity(0.5),
            color: HexColor('#FF0C8F').withOpacity(0.5),
          ),
        ),
        Expanded(
          child: HeaderTile(
            text: 'LOW',
            color: HexColor('#A9DB97').withOpacity(0.5),
          ),
        ),
        Expanded(
          child: HeaderTile(
            text: 'HIGH',
            // color: AppColors.appPink.withOpacity(0.5),
            color: HexColor('#FF0C8F').withOpacity(0.5),
          ),
        ),
        Expanded(
          child: HeaderTile(
            text: 'WIN%',
            // color: AppColors.appDarkGreen.withOpacity(0.5),
            color: HexColor('#A9DB97').withOpacity(0.5),
          ),
        ),
        Expanded(
          child: HeaderTile(
            text: 'COUNT',
            // color: AppColors.appDarkGreen.withOpacity(0.5),
            // color: HexColor('#A9DB97').withOpacity(0.5),
            color: HexColor('#FF0C8F').withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}

class SheetBodyRow extends StatelessWidget {
  const SheetBodyRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: BodyTile(
            text: 'M.Vlasic',
            color: HexColor('#3B3B3B'),
            image: Image.asset(AssetImages.bulls, height: 20.h),
          ),
        ),
        Expanded(
          child: BodyTile(
            text: '0.4',
            // color: AppColors.appPink.withOpacity(0.5),
            // color: HexColor('#A9DB97').withOpacity(0.5),
            color: HexColor('#FF0C8F').withOpacity(0.5),
          ),
        ),
        Expanded(
          child: BodyTile(
            text: '0',
            // color: AppColors.appPink.withOpacity(0.5),
            color: HexColor('#A9DB97').withOpacity(0.5),
            // color: HexColor('#FF0C8F').withOpacity(0.5),
          ),
        ),
        Expanded(
          child: BodyTile(
            text: '1',
            color: HexColor('#FF0C8F').withOpacity(0.5),
          ),
        ),
        Expanded(
          child: BodyTile(
            text: '40%',
            // color: AppColors.appPink.withOpacity(0.5),
            color: HexColor('#A9DB97').withOpacity(0.5),
          ),
        ),
        Expanded(
          child: BodyTile(
            text: '3',
            // color: AppColors.appDarkGreen.withOpacity(0.5),
            // color: HexColor('#A9DB97').withOpacity(0.5),
            color: HexColor('#FF0C8F').withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}

class HeaderTile extends StatelessWidget {
  const HeaderTile({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.white,
          width: 0.25,
        ),
        color: color,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 14.h,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyling.bold.copyWith(
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}

class BodyTile extends StatelessWidget {
  const BodyTile({
    Key? key,
    required this.text,
    required this.color,
    this.image,
  }) : super(key: key);

  final String text;
  final Color color;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.white,
          width: 0.25,
        ),
        color: color,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (image != null) ...[
              image!,
              HorizontalSpacing(4.w),
            ],
            Text(
              text,
              style: TextStyling.bold.copyWith(
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
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
