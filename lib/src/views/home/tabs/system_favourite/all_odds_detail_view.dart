import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/custom/app_expansion_list.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';

class AllOddsDetailView extends StatefulWidget {
  const AllOddsDetailView({Key? key}) : super(key: key);

  @override
  State<AllOddsDetailView> createState() => _AllOddsDetailViewState();
}

class _AllOddsDetailViewState extends State<AllOddsDetailView> {
  bool showAllOdds = false;
  bool seeAllOdds = false;

  toggleSeeAllOdds() {
    setState(() {
      seeAllOdds = !seeAllOdds;
    });
  }

  toggleShowAllOdds() {
    setState(() {
      showAllOdds = !showAllOdds;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            showBackButton: true,
            titleText: 'Odds',
            showNotification: true,
            showSettings: false,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
              ),
              child: Container(
                // height: context.screenSize().height,
                // width: context.screenSize().width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New York VS Philadelphia',
                      style: TextStyling.semiBold.copyWith(
                        fontSize: 24.sp,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    buildOddDetailCard(),
                    VerticalSpacing(30.h),
                    buildOddDetailCard(),
                    VerticalSpacing(30.h),
                    buildOddDetailCard(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column buildOddDetailCard() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.appPink,
            ),
            gradient: AppColors.buttonGradient,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 5.h,
          ),
          child: Row(
            children: [
              Text(
                'Win Market',
                style: TextStyling.bold.copyWith(
                  fontSize: 22.sp,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return AppExpansionPanelList(
              elevation: 0,
              expandedHeaderPadding: EdgeInsets.zero,
              expansionCallback: (panelIndex, isExpanded) => toggleSeeAllOdds(),
              children: [
                AppExpansionPanel(
                  iconBuilder: (child, isExpanded) {
                    return null;
                  },

                  isExpanded: seeAllOdds,
                  canTapOnHeader: true,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  headerBuilder: (context, isExpanded) {
                    return WinMarketItem();
                  },
                  body: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.w,
                          vertical: 5.h,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: AppColors.appPink,
                            ),
                            right: BorderSide(
                              color: AppColors.appPink,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sportsbook',
                              style: TextStyling.medium.copyWith(
                                fontSize: 11.sp,
                                color: AppColors.lightGrey.withOpacity(0.8),
                              ),
                            ),
                            Text(
                              'Odds',
                              style: TextStyling.medium.copyWith(
                                fontSize: 11.sp,
                                color: AppColors.lightGrey.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 7,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.appPink,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 10.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  AssetImages.bet365,
                                  height: 35.h,
                                ),
                                Material(
                                  borderRadius: BorderRadius.circular(9.r),
                                  color: AppColors.grey.withOpacity(0.3),
                                  elevation: 3,
                                  child: SizedBox(
                                    height: 38.h,
                                    width: 42.w,
                                    child: Center(
                                      child: Text('44/4'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  // body: Container(),
                ),
              ],
            );
            //  WinMarketItem();
          },
          itemCount: 8.clamp(
            0,
            showAllOdds ? 8 : 3,
          ),
        ),
        GestureDetector(
          onTap: () {
            toggleShowAllOdds();
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.appPink,
              ),
              color: AppColors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.r),
                bottomRight: Radius.circular(12.r),
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 12.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  !showAllOdds ? 'Show all' : 'Show less',
                  style: TextStyling.medium.copyWith(
                    fontSize: 14.sp,
                    color:
                        showAllOdds ? AppColors.white : AppColors.appLightGreen,
                  ),
                ),
                HorizontalSpacing(3.w),
                RotatedBox(
                  quarterTurns: showAllOdds ? 3 : 1,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color:
                        showAllOdds ? AppColors.white : AppColors.appLightGreen,
                    size: 20.sp,
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

class WinMarketItem extends StatelessWidget {
  const WinMarketItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.appPink,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Win Market',
                style: TextStyling.medium,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'See All Odds (25)',
                    style: TextStyling.medium.copyWith(
                      fontSize: 8.sp,
                      color: AppColors.appLightGreen,
                    ),
                  ),
                  HorizontalSpacing(2.w),
                  RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.appLightGreen,
                      size: 10.sp,
                    ),
                  ),
                ],
              )
            ],
          ),
          Material(
            borderRadius: BorderRadius.circular(9.r),
            color: AppColors.grey.withOpacity(0.3),
            elevation: 3,
            child: SizedBox(
              height: 38.h,
              width: 42.w,
              child: Center(
                child: Text('44/4'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
