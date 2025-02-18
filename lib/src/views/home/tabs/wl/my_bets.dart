import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starter_app/custom/app_expansion_list.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';

class MyBets extends StatelessWidget {
  const MyBets({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    final Shader textGradient = LinearGradient(
      colors: <Color>[
        AppColors.appLightGreen,
        AppColors.appDarkGreen,
      ],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    // );

    return Expanded(
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              // horizontal: 20.w,
              vertical: 10.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'View and Share your bets',
                        style: TextStyling.medium.copyWith(
                          color: AppColors.grey,
                        ),
                      ),
                      VerticalSpacing(10.h),
                      FilterButtons(model: model),
                    ],
                  ),
                ),
                VerticalSpacing(20.h),
                AppExpansionPanelList(
                  dividerColor: AppColors.lightGrey,
                  // animationDuration: const Duration(milliseconds: 300),
                  expansionCallback: (index, isOpended) {
                    print(isOpended);
                    model.toggleActiveBets();
                  },

                  elevation: 0,
                  expandedHeaderPadding: EdgeInsets.zero,

                  // expandIconColor: AppColors.appPink,
                  children: [
                    AppExpansionPanel(
                      iconBuilder: (child, isExpanded) {
                        return null;
                      },
                      isExpanded: model.isActiveBetsExpanded,
                      canTapOnHeader: true,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 5.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Active Bets',
                                style: TextStyling.bold.copyWith(
                                  fontSize: 20.sp,
                                  color: AppColors.appLightGreen,
                                ),
                              ),
                              IconButton(
                                onPressed: null,
                                icon: Padding(
                                  padding: EdgeInsets.only(
                                    bottom:
                                        model.isActiveBetsExpanded ? 0 : 8.h,
                                    top: model.isActiveBetsExpanded ? 8.h : 0,
                                  ),
                                  child: RotatedBox(
                                    quarterTurns:
                                        model.isActiveBetsExpanded ? 1 : 3,
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: AppColors.appLightGreen,
                                      size: 24.sp,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      body: ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            VerticalSpacing(10.h),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => ActiveBetWidget(),
                        itemCount: 4,
                      ),
                    ),
                  ],
                ),
                VerticalSpacing(10),
                AppExpansionPanelList(
                  dividerColor: AppColors.lightGrey,
                  // animationDuration: const Duration(milliseconds: 300),
                  expansionCallback: (index, isOpended) {
                    print(isOpended);
                    model.togglePreviousBets();
                  },

                  elevation: 0,
                  expandedHeaderPadding: EdgeInsets.zero,

                  // expandIconColor: AppColors.appPink,
                  children: [
                    AppExpansionPanel(
                      iconBuilder: (child, isExpanded) {
                        return null;
                      },
                      isExpanded: model.isPreviousBetsExpanded,
                      canTapOnHeader: true,
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 5.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Pervious Bets',
                                style: TextStyling.bold.copyWith(
                                  fontSize: 20.sp,
                                  color: AppColors.appLightGreen,
                                ),
                              ),
                              IconButton(
                                onPressed: null,
                                icon: Padding(
                                  padding: EdgeInsets.only(
                                    bottom:
                                        model.isPreviousBetsExpanded ? 0 : 8.h,
                                    top: model.isPreviousBetsExpanded ? 8.h : 0,
                                  ),
                                  child: RotatedBox(
                                    quarterTurns:
                                        model.isPreviousBetsExpanded ? 1 : 3,
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      color: AppColors.appLightGreen,
                                      size: 24.sp,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      body: ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            VerticalSpacing(10.h),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => PreviousBetWidget(
                          isWon: index % 2 == 0,
                        ),
                        itemCount: 4,
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.symmetric(
                //     horizontal: 20.w,
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Text(
                //         'Previous Bets',
                //         style: TextStyling.bold.copyWith(
                //           fontSize: 20.sp,
                //           color: AppColors.appLightGreen,
                //         ),
                //       ),
                //       IconButton(
                //         onPressed: () {},
                //         icon: Padding(
                //           padding: EdgeInsets.only(
                //             bottom: 6.h,
                //           ),
                //           child: RotatedBox(
                //             quarterTurns: 3,
                //             child: Icon(
                //               Icons.arrow_back_ios,
                //               color: AppColors.appLightGreen,
                //               size: 24.sp,
                //             ),
                //           ),
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                // VerticalSpacing(10.h),
                // ListView.separated(
                //   padding: EdgeInsets.zero,
                //   physics: NeverScrollableScrollPhysics(),
                //   separatorBuilder: (context, index) => VerticalSpacing(10.h),
                //   shrinkWrap: true,
                //   itemBuilder: (context, index) => PreviousBetWidget(
                //     isWon: index % 2 == 0,
                //   ),
                //   itemCount: 4,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveBetWidget extends StatelessWidget {
  const ActiveBetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BetWidget(),
        VerticalSpacing(10.h),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
              right: 20.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  AssetIcons.shareButtonIcon,
                  height: 24.h,
                ),
                HorizontalSpacing(2.w),
                Text(
                  'Share Bet',
                  style: TextStyling.regular.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.appLightGreen,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PreviousBetWidget extends StatelessWidget {
  const PreviousBetWidget({
    Key? key,
    required this.isWon,
  }) : super(key: key);

  final bool isWon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BetWidget(
          isWon: isWon,
        ),
        VerticalSpacing(10.h),
        GestureDetector(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.only(
              right: 20.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  AssetIcons.shareButtonIcon,
                  height: 24.h,
                ),
                HorizontalSpacing(2.w),
                Text(
                  'Share Bet',
                  style: TextStyling.regular.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.appLightGreen,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class BetWidget extends StatelessWidget {
  const BetWidget({
    Key? key,
    this.isWon,
  }) : super(key: key);

  final bool? isWon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.appPink,
            width: 4,
          ),
          bottom: BorderSide(
            color: AppColors.appPink,
            width: 4,
          ),
        ),
      ),
      child: Column(
        children: [
          BetInfoWidget(),
          VerticalSpacing(20.h),
          BetInfoWidget(),
          if (isWon != null) ...[
            VerticalSpacing(30.h),
            // BetInfoWidget(),
            Text(
              isWon! ? 'You Won this bet' : 'You Lost this bet',
              style: TextStyling.bold.copyWith(
                color: isWon! ? AppColors.appLightGreen : AppColors.appPink,
                fontSize: 20.sp,
              ),
            ),
            RichText(
              text: TextSpan(
                text: isWon! ? 'Profit:' : 'Loss:',
                style: TextStyling.regular.copyWith(
                  color: AppColors.grey,
                ),
                children: [
                  TextSpan(
                    text: ' \$10.00',
                    style: TextStyling.bold.copyWith(
                        color: isWon!
                            ? AppColors.appLightGreen
                            : AppColors.appPink,
                        fontSize: 16.sp),
                  ),
                ],
              ),
            ),
            VerticalSpacing(6.h),
          ],
        ],
      ),
    );
  }
}

class BetInfoWidget extends StatelessWidget {
  const BetInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              AssetImages.nyIcon,
              height: 36.h,
            ),
            HorizontalSpacing(5.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'NYG',
                  style: TextStyling.semiBold.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  '451',
                  style: TextStyling.medium.copyWith(
                    fontSize: 11.sp,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            BetBoxWidget(),
            HorizontalSpacing(15.w),
            BetBoxWidget(),
            HorizontalSpacing(15.w),
            BetBoxWidget(),
          ],
        )
      ],
    );
  }
}

class BetBoxWidget extends StatelessWidget {
  const BetBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.r),
          ),
          color: AppColors.grey.withOpacity(0.3),
          child: SizedBox(
            height: 42.h,
            width: 42.h,
            child: Center(
              child: Text(
                '4/1',
                style: TextStyling.bold.copyWith(
                  fontSize: 13.sp,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Image.asset(
            AssetImages.bet365,
            width: 24.w,
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
          Spacer(
            flex: 2,
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
