import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/custom_form_field.dart';
import 'package:starter_app/src/shared/main_button.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/settings/sports_book_detail/sports_book_detail_view_model.dart';

class SportsBookDetailView extends StackedView<SportsBookDetailViewModel> {
  @override
  Widget builder(
      BuildContext context, SportsBookDetailViewModel model, Widget? child) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: context.screenSize().width,
          height: context.screenSize().height,
          child: Column(
            children: [
              CustomAppBar(
                titleText: 'Add Sportsbook',
                showBackButton: true,
                showNotification: true,
                showSettings: false,
              ),
              VerticalSpacing(20.h),
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
                  child: Column(
                    children: [
                      Image.asset(
                        AssetImages.bet365,
                        fit: BoxFit.contain,
                        height: 52.sp,
                        width: 100.sp,
                      ),
                      VerticalSpacing(20.h),
                      Text(
                        'Please enter your phone number',
                        style: TextStyling.medium,
                        textAlign: TextAlign.center,
                      ),
                      VerticalSpacing(20.h),
                      CustomFormField(
                        labelText: 'Phone Number',
                        validatorFunction: (v) {},
                        primaryColor: AppColors.white,
                        textColor: AppColors.white,
                        isLabelCenter: false,
                        showLabel: false,
                      ),
                      VerticalSpacing(10.h),
                      Text(
                        'We’ll never share your login information with anyone else.',
                        style: TextStyling.medium.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      VerticalSpacing(30.h),
                      Text(
                        'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae.',
                        style: TextStyling.thin.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Spacer(flex: 4),
                      MainButton(
                        buttonText: 'Login',
                        onPressed: () {},
                        isLoading: false,
                      ),
                      VerticalSpacing(10.h),
                      MainButton(
                        buttonText: 'Create Account',
                        onPressed: () {},
                        isLoading: false,
                      ),
                      // Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  SportsBookDetailViewModel viewModelBuilder(BuildContext context) =>
      SportsBookDetailViewModel();

  @override
  void onViewModelReady(SportsBookDetailViewModel model) => model.init();
}

class CustomRoundButton extends StatelessWidget {
  const CustomRoundButton(
      {Key? key, required this.onPressed, required this.buttonText})
      : super(key: key);

  final VoidCallback onPressed;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.buttonGradient,
        borderRadius: BorderRadius.circular(28.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          // elevation: MaterialStateProperty.all(3),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          padding: MaterialStatePropertyAll(
            EdgeInsets.zero,
          ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
        child: Text(
          buttonText,
          style: TextStyling.medium,
        ),
      ),
    );
  }
}
