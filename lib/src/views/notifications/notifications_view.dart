import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/notifications/notifications_view_model.dart';

class NotificationsView extends StackedView<NotificationsViewModel> {
  @override
  Widget builder(
      BuildContext context, NotificationsViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: Column(
          children: [
            CustomAppBar(
              showBackButton: true,
              titleText: 'Notifications',
              showNotification: false,
              showSettings: true,
            ),
            model.showNotifications
                ? Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(
                        left: 10.w,
                        right: 10.w,
                        bottom: 20.w,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 3.sp,
                                  decoration: BoxDecoration(
                                    color: AppColors.appLightGreen,
                                    borderRadius: BorderRadius.circular(3.r),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Text(
                                  'Unread',
                                  style: TextStyling.medium.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColors.appLightGreen,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  height: 3.sp,
                                  decoration: BoxDecoration(
                                    color: AppColors.appLightGreen,
                                    borderRadius: BorderRadius.circular(3.r),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          VerticalSpacing(10.h),
                          ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return NotificationWidget(
                                isRead: false,
                              );
                            },
                            itemCount: 2,
                          ),
                          VerticalSpacing(20.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 3.sp,
                                  decoration: BoxDecoration(
                                    color: AppColors.appLightGreen,
                                    borderRadius: BorderRadius.circular(3.r),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 8.w),
                                child: Text(
                                  'Raed',
                                  style: TextStyling.medium.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColors.appLightGreen,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  height: 3.sp,
                                  decoration: BoxDecoration(
                                    color: AppColors.appLightGreen,
                                    borderRadius: BorderRadius.circular(3.r),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          VerticalSpacing(10.h),
                          ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return NotificationWidget(
                                isRead: true,
                              );
                            },
                            itemCount: 2,
                          ),
                        ],
                      ),
                    ),
                  )
                : NoNotificationsView(),
          ],
        ),
      ),
    );
  }

  @override
  NotificationsViewModel viewModelBuilder(BuildContext context) =>
      NotificationsViewModel();

  @override
  void onViewModelReady(NotificationsViewModel model) => model.init();
}

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    Key? key,
    required this.isRead,
  }) : super(key: key);

  final bool isRead;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.all(10.w),
      height: 73.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border(
          bottom: BorderSide(
            color: AppColors.appLightGreen,
          ),
        ),
        color: isRead ? AppColors.appBlack : AppColors.grey.withOpacity(0.8),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.appDarkGreen,
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: AppColors.appLightGreen,
                size: 24.w,
              ),
            ),
          ),
          HorizontalSpacing(10.w),
          Expanded(
            child: Text(
              'See Recent Arbitrage Bets Now',
              overflow: TextOverflow.ellipsis,
              style: TextStyling.regular.copyWith(
                fontSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NoNotificationsView extends StatelessWidget {
  const NoNotificationsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AssetImages.noNotifications,
          ),
          VerticalSpacing(20.h),
          Text(
            'No notifications yet.',
            style: TextStyling.bold.copyWith(
              fontSize: 24.sp,
            ),
          ),
          VerticalSpacing(5.h),
          Text(
            'Your notifications will appear on this page',
            style: TextStyling.regular.copyWith(
              fontSize: 14.sp,
              color: AppColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
