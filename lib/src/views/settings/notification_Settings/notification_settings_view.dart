import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/settings/notification_Settings/notification_settings_view_model.dart';

class NotificationSettingsView
    extends StackedView<NotificationSettingsViewModel> {
  @override
  Widget builder(BuildContext context, NotificationSettingsViewModel model,
      Widget? child) {
    return Scaffold(
      // backgroundColor: AppColors.primary,
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: Column(
          children: [
            CustomAppBar(
              showBackButton: true,
              titleText: 'Notification Settings',
              showNotification: true,
              showSettings: false,
            ),
            VerticalSpacing(20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingsSwitch(
                    title: 'Lay of the Day',
                    onChanged: (v) {},
                    value: true,
                  ),
                  SettingsSwitch(
                    title: 'Arbitage Bets',
                    onChanged: (v) {},
                    value: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  NotificationSettingsViewModel viewModelBuilder(BuildContext context) =>
      NotificationSettingsViewModel();

  @override
  void onViewModelReady(NotificationSettingsViewModel model) => model.init();
}

class SettingsSwitch extends StatelessWidget {
  const SettingsSwitch({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final bool value;
  final Function(bool v) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 20.w),
      height: 65.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border(
          bottom: BorderSide(
            color: AppColors.appDarkGreen,
          ),
        ),
        color: AppColors.appBlack,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyling.regular.copyWith(
                fontSize: 18.sp,
              ),
            ),
          ),
          HorizontalSpacing(10.w),
          Switch(
            value: value,
            onChanged: onChanged,
            inactiveTrackColor: AppColors.grey,
            thumbColor: MaterialStatePropertyAll(AppColors.white),
            activeTrackColor: AppColors.appLightGreen.withOpacity(0.5),
            trackOutlineColor: MaterialStatePropertyAll(
              Colors.transparent,
            ),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            trackOutlineWidth: MaterialStatePropertyAll(0),
          )
        ],
      ),
    );
  }
}
