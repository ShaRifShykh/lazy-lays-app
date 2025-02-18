import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/custom_game_tab_widget.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';
import 'package:starter_app/src/views/home/tabs/system_favourite/system_favourite_tab_view.dart';

class AllSportsTabView extends StatefulWidget {
  const AllSportsTabView({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  State<AllSportsTabView> createState() => _AllSportsTabViewState();
}

class _AllSportsTabViewState extends State<AllSportsTabView>
    with TickerProviderStateMixin {
  late TabController allSportsTabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    allSportsTabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    allSportsTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          VerticalSpacing(10.h),
          SizedBox(
            height: 65.sp,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: widget.model.games.length,
              itemBuilder: (context, index) => CustomGameTabWidget(
                isSelected: widget.model.allSportsGameSelectedTab == index,
                onTap: () {
                  widget.model.onAllSportsGameTabChanged(index);
                },
                title: widget.model.games[index],
              ),
            ),
          ),
          TabBar(
            dividerColor: AppColors.black,
            unselectedLabelStyle: TextStyling.regular.copyWith(
              fontSize: 20.sp,
              color: AppColors.grey,
            ),
            labelStyle: TextStyling.medium.copyWith(
              fontSize: 20.sp,
              color: AppColors.appLightGreen,
            ),
            controller: allSportsTabController,
            isScrollable: false,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.only(
              bottom: 10.h,
            ),
            tabs: [
              Text('Highlights'),
              Text('Upcoming'),
            ],
            padding: EdgeInsets.only(
              top: 20.h,
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: allSportsTabController,
              children: [
                ListView.separated(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  separatorBuilder: (context, index) => Container(
                    height: 4.h,
                    width: double.infinity,
                    color: AppColors.black,
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                  ),
                  itemBuilder: (context, index) {
                    return HighlightsCard();
                  },
                  itemCount: 10,
                  shrinkWrap: true,
                ),
                ListView.separated(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
                  separatorBuilder: (context, index) => VerticalSpacing(20.h),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        NavService.gameDetails();
                      },
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12.r),
                                        topRight: Radius.circular(12.r),
                                      ),
                                      border: Border(
                                        right: BorderSide(
                                          color: AppColors.grey,
                                        ),
                                        left: BorderSide(
                                          color: AppColors.grey,
                                        ),
                                        top: BorderSide(
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: double.infinity,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  AssetImages.bulls,
                                                  height: 70.h,
                                                ),
                                                Text(
                                                  'Bulls',
                                                  style: TextStyling.semiBold
                                                      .copyWith(
                                                    fontSize: 18.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            height: double.infinity,
                                            color: AppColors.appPink
                                                .withOpacity(0.4),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Image.asset(
                                                  AssetImages.hornets,
                                                  height: 70.h,
                                                ),
                                                Text(
                                                  'Hornets',
                                                  style: TextStyling.semiBold
                                                      .copyWith(
                                                    fontSize: 18.sp,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'VS',
                                      style: TextStyling.semiBold.copyWith(
                                        fontSize: 18.sp,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            UpcomingCardFooter(),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: 10,
                  shrinkWrap: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UpcomingCardFooter extends StatelessWidget {
  const UpcomingCardFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
        color: AppColors.appDarkGreen.withOpacity(0.8),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
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
    );
  }
}

class HighlightsCard extends StatelessWidget {
  const HighlightsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 16.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighlightsCardHeader(),
          VerticalSpacing(10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Porto',
                    style: TextStyling.medium,
                  ),
                  Text(
                    'Liverpool FC',
                    style: TextStyling.medium,
                  ),
                ],
              ),
              Row(
                children: [
                  HighlightsCardInfoBox(),
                  HorizontalSpacing(4.w),
                  HighlightsCardInfoBox(),
                  HorizontalSpacing(4.w),
                  HighlightsCardInfoBox(),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class HighlightsCardHeader extends StatelessWidget {
  const HighlightsCardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              AssetImages.turkeyFlagIcon,
              height: 16.h,
            ),
            HorizontalSpacing(5.w),
            Text(
              'Champions League, Group B',
              style: TextStyling.medium.copyWith(
                fontSize: 14.sp,
                color: AppColors.lightGrey.withOpacity(0.8),
              ),
            )
          ],
        ),
        Text(
          '08.10 / 11:45',
          style: TextStyling.medium.copyWith(
            fontSize: 14.sp,
            color: AppColors.appGreenAccent,
          ),
        )
      ],
    );
  }
}

class HighlightsCardInfoBox extends StatelessWidget {
  const HighlightsCardInfoBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 54.w,
      height: 42.h,
      decoration: BoxDecoration(
        color: AppColors.appDarkGreen.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '1',
            style: TextStyling.medium.copyWith(
              fontSize: 10.sp,
              color: AppColors.lightGrey.withOpacity(0.8),
            ),
          ),
          Text(
            '3.74',
            style: TextStyling.medium,
          ),
        ],
      ),
    );
  }
}
