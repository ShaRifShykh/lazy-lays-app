import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/src/shared/custom_form_field.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';

class SearchTabView extends StatelessWidget {
  const SearchTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFormField(
            borderRadius: BorderRadius.circular(24.r),
            labelText: 'Search',
            textFieldBgColor: AppColors.appSecondaryBlack,
            validatorFunction: (v) {},
            primaryColor: AppColors.white,
            suffixWidget: Icon(
              Icons.mic,
            ),
            textColor: AppColors.white,
            isLabelCenter: false,
            showLabel: false,
          ),
          VerticalSpacing(20.h),
          Text(
            'Popular search',
            style: TextStyling.bold.copyWith(
              fontSize: 14.sp,
              color: AppColors.appLightGreen,
            ),
          ),
          VerticalSpacing(10.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  10,
                  (index) => Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
                    child: Text(
                      'Sample search',
                      style: TextStyling.regular.copyWith(
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
