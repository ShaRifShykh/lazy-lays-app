import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/settings/privacy_policy/privacy_policy_view_model.dart';

class PrivacyPolicyView extends StackedView<PrivacyPolicyViewModel> {
  @override
  Widget builder(
      BuildContext context, PrivacyPolicyViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: Column(
          children: [
            CustomAppBar(
              showBackButton: true,
              titleText: 'Privacy Policy',
              showNotification: false,
              showSettings: false,
              trailingWidget: SizedBox(
                  width: 50.w), //TODO: quick fix, will edit this later.
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 20.w,
                  right: 20.w,
                  bottom: 20.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    VerticalSpacing(10.h),
                    Text(
                      '1. Types data we collect',
                      style: TextStyling.bold.copyWith(
                        fontSize: 18.sp,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
                      style: TextStyling.regular.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                    VerticalSpacing(30.h),
                    Text(
                      '2. Use of your personal data',
                      style: TextStyling.bold.copyWith(
                        fontSize: 18.sp,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
                      style: TextStyling.regular.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                    VerticalSpacing(30.h),
                    Text(
                      '3. Disclosure of your personal data',
                      style: TextStyling.bold.copyWith(
                        fontSize: 18.sp,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. \n\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
                      style: TextStyling.regular.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                    VerticalSpacing(30.h),
                    Text(
                      '4. Disclosure of AMG',
                      style: TextStyling.bold.copyWith(
                        fontSize: 18.sp,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. \n\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.',
                      style: TextStyling.regular.copyWith(
                        fontSize: 14.sp,
                      ),
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
  PrivacyPolicyViewModel viewModelBuilder(BuildContext context) =>
      PrivacyPolicyViewModel();

  @override
  void onViewModelReady(PrivacyPolicyViewModel model) => model.init();
}
