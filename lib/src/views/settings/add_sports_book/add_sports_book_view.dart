import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/settings/add_sports_book/add_sports_book_view_model.dart';

class AddSportsBookView extends StackedView<AddSportsBookViewModel> {
  @override
  Widget builder(
      BuildContext context, AddSportsBookViewModel model, Widget? child) {
    return Scaffold(
      // backgroundColor: AppColors.primary,
      body: Container(
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ),
              child: Column(
                children: [
                  Text(
                    'Please Choose a sportsbook to link with LazyLays',
                    textAlign: TextAlign.center,
                    style: TextStyling.medium,
                  ),
                  VerticalSpacing(40.h),
                  Container(
                    height: 50.sp,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DropdownButton<String>(
                                // items: [
                                //   DropdownMenuItem(
                                //     child: Text('United States'),
                                //     value: 'United States',
                                //   ),
                                // ],
                                value: model.countries.first,
                                items: model.countries
                                    .map(
                                      (e) => DropdownMenuItem(
                                        child: Text(e),
                                        value: e,
                                      ),
                                    )
                                    .toList(),
                                onChanged: (v) {},
                                underline: SizedBox.shrink(),
                                icon: SizedBox.shrink(),
                                alignment: Alignment.center,
                                dropdownColor: AppColors.grey.withOpacity(0.8),
                                // isExpanded: true,
                              ),
                            ],
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.grey,
                            size: 20.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalSpacing(20.h),
                  Container(
                    height: 50.sp,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.grey,
                      ),
                      borderRadius: BorderRadius.circular(14.r),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DropdownButton<String>(
                                value: model.states.first,
                                items: model.states
                                    .map(
                                      (e) => DropdownMenuItem(
                                        child: Text(e),
                                        value: e,
                                      ),
                                    )
                                    .toList(),
                                onChanged: (v) {},
                                underline: SizedBox.shrink(),
                                icon: SizedBox.shrink(),
                                alignment: Alignment.center,
                                dropdownColor: AppColors.grey.withOpacity(0.8),
                                // isExpanded: true,
                              ),
                            ],
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.grey,
                            size: 20.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                  VerticalSpacing(20.h),
                  Text(
                    'Link a sportsbook now',
                    textAlign: TextAlign.center,
                    style: TextStyling.medium.copyWith(
                      color: AppColors.lightGrey,
                    ),
                  ),
                  // ListView.builder(
                  //   shrinkWrap: true,
                  //   itemBuilder: (context, index) => Row(
                  //     children: [
                  //       Image.asset(AssetImages.bet365),
                  //     ],
                  //   ),
                  // ),
                  VerticalSpacing(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AssetImages.bet365,
                      ),
                      CustomRoundButton(
                        onPressed: model.onClickLink,
                        buttonText: 'Link',
                      ),
                    ],
                  ),
                  VerticalSpacing(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AssetImages.bet365,
                      ),
                      CustomRoundButton(
                        onPressed: model.onClickLink,
                        buttonText: 'Link',
                      ),
                    ],
                  ),
                  VerticalSpacing(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AssetImages.bet365,
                      ),
                      CustomRoundButton(
                        onPressed: model.onClickLink,
                        buttonText: 'Link',
                      ),
                    ],
                  ),
                  VerticalSpacing(20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        AssetImages.bet365,
                      ),
                      CustomRoundButton(
                        onPressed: model.onClickLink,
                        buttonText: 'Link',
                      ),
                    ],
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
  AddSportsBookViewModel viewModelBuilder(BuildContext context) =>
      AddSportsBookViewModel();

  @override
  void onViewModelReady(AddSportsBookViewModel model) => model.init();
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
