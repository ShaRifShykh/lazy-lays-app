import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/onboarding/onboarding_view_model.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  @override
  Widget builder(
      BuildContext context, OnboardingViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
          width: context.screenSize().width,
          height: context.screenSize().height,
          decoration: BoxDecoration(
            gradient: AppColors.onboardingBgGradient,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: PageView.builder(
                  itemBuilder: ((context, index) {
                    final page = model.onboardingPages[index];
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: Image.asset(page.imagePath).image,
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              page.title,
                              style: TextStyling.extraBold.copyWith(
                                fontSize: 32.sp,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Text(
                              page.description,
                              style: TextStyling.medium.copyWith(
                                fontSize: 18.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  itemCount: model.onboardingPages.length,
                  scrollDirection: Axis.horizontal,
                  controller: model.pageController,
                  onPageChanged: (value) {
                    model.index = value;
                    model.notifyListeners();
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                height: context.screenSize().height * 0.14,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: model.index != 0,
                      child: GestureDetector(
                        onTap: model.onClickPrev,
                        child: Container(
                          height: 65.w,
                          width: 65.w,
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.lightGrey,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.green.shade900,
                              fill: 1,
                              size: 40.w,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: model.onClickNext,
                      child: Container(
                        height: 65.w,
                        width: 65.w,
                        padding: EdgeInsets.all(4.w),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.lightGrey,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.green.shade900,
                            fill: 1,
                            size: 40.w,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  @override
  OnboardingViewModel viewModelBuilder(BuildContext context) =>
      OnboardingViewModel();

  @override
  void onViewModelReady(OnboardingViewModel model) => model.init();
}
