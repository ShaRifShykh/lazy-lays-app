import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/settings/get_premium/get_permium_view_2.dart';
import 'package:starter_app/src/views/settings/settings_view_model.dart';

class SettingsView extends StackedView<SettingsViewModel> {
  @override
  Widget builder(BuildContext context, SettingsViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: Column(
          children: [
            CustomAppBar(
              showBackButton: false,
              titleText: 'Settings',
              showNotification: true,
              showSettings: false,
            ),
            Expanded(
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
                    SettingsButton(
                      title: 'Get Premium',
                      onTap: model.onClickGetPremium,
                      // onTap: () {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => GetPremiumView2(),
                      //     ),
                      //   );
                      // },
                      icon: Image.asset(
                        AssetImages.gift,
                        height: 35.h,
                      ),
                    ),
                    SettingsButton(
                      title: 'Profile',
                      onTap: model.onClickProfile,
                      iconData: FontAwesomeIcons.user,
                    ),
                    SettingsButton(
                      title: 'Add Sportsbook',
                      onTap: model.onClickAddSportsBook,
                      iconData: Icons.add,
                    ),
                    SettingsButton(
                      title: 'Notification Settings',
                      onTap: model.onClickNotificationSettings,
                      iconData: Icons.notifications,
                    ),
                    SettingsButton(
                      title: 'Privacy Policy',
                      onTap: model.onClickPrivacyPolicy,
                      iconData: Icons.warning,
                    ),
                    SettingsButton(
                      title: 'Logout',
                      onTap: model.onClickLogout,
                      iconData: Icons.logout_outlined,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  SettingsViewModel viewModelBuilder(BuildContext context) =>
      SettingsViewModel();

  @override
  void onViewModelReady(SettingsViewModel model) => model.init();
}

class SettingsButton extends StatelessWidget {
  const SettingsButton({
    Key? key,
    required this.title,
    this.icon,
    this.iconData,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Widget? icon;
  final IconData? iconData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 14.w),
        height: 65.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border(
            bottom: BorderSide(
              color: AppColors.appLightGreen,
            ),
          ),
          color: AppColors.appBlack,
        ),
        child: Row(
          children: [
            icon ??
                Container(
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.appDarkGreen,
                  ),
                  child: Center(
                    child: Icon(
                      iconData ?? Icons.add,
                      color: AppColors.appLightGreen,
                      size: 24.w,
                    ),
                  ),
                ),
            HorizontalSpacing(20.w),
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
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.appLightGreen,
              size: 24.w,
            ),
          ],
        ),
      ),
    );
  }
}
