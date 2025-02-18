import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/main_button.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/views/auth/welcome/welcome_view_model.dart';

class WelcomeView extends StackedView<WelcomeViewModel> {
  @override
  Widget builder(BuildContext context, WelcomeViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(AssetImages.splashLogo),
            ),
            SizedBox(height: 40.h),
            MainButton(
              buttonText: 'Sign in',
              buttonFontColor: AppColors.white,
              onPressed: model.onClickLogin,
              isLoading: model.isBusy,
            ),
            SizedBox(height: 24.h),
            MainButton(
              buttonText: 'Sign up',
              buttonFontColor: AppColors.white,
              onPressed: model.onClickRegister,
              isLoading: model.isBusy,
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  @override
  WelcomeViewModel viewModelBuilder(BuildContext context) => WelcomeViewModel();

  @override
  void onViewModelReady(WelcomeViewModel model) => model.init();

  // @override
  // void onDispose(LoginViewModel model) {
  //   super.onDispose(model);
  // }
}
