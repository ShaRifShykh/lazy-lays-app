import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';
import 'package:starter_app/src/shared/custom_form_field.dart';
import 'package:starter_app/src/shared/main_button.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/auth/forget_password/forget_password_view_model.dart';

class ForgetPasswordView extends StackedView<ForgetPasswordViewModel> {
  @override
  Widget builder(
      BuildContext context, ForgetPasswordViewModel model, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: AppColors.white,
          onPressed: () {
            NavService.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Forget password',
          style: TextStyling.semiBold,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height - kToolbarHeight,
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
              child: Image.asset(AssetImages.verification),
            ),
            SizedBox(height: 20.h),
            Text(
              'Enter your email address',
              style: TextStyling.medium,
            ),
            SizedBox(height: 10.h),
            CustomFormField(
              controller: model.passwordController,
              textFieldBgColor: AppColors.appSecondaryBlack,
              labelText: 'Email address',
              validatorFunction: (v) {
                return ValidationUtils.validatePassword(v);
              },
              primaryColor: AppColors.white,
              textColor: AppColors.white,
              isLabelCenter: false,
            ),
            Spacer(flex: 2),
            MainButton(
              buttonText: 'Continue',
              buttonFontColor: AppColors.white,
              onPressed: () {
                model.onContinue();
              },
              isLoading: model.isBusy,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  ForgetPasswordViewModel viewModelBuilder(BuildContext context) =>
      ForgetPasswordViewModel();

  @override
  void onViewModelReady(ForgetPasswordViewModel model) => model.init();

  // @override
  // void onDispose(LoginViewModel model) {
  //   super.onDispose(model);
  // }
}
