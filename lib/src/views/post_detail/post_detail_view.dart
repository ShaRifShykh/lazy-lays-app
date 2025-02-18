import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/post_detail/post_detail_view_model.dart';

class PostDetailView extends StackedView<PostDetailViewModel> {
  @override
  Widget builder(
      BuildContext context, PostDetailViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: Column(
          children: [
            CustomAppBar(
              showBackButton: true,
              titleText: 'Lay Of The Day',
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
                    Text(
                      'The winning game',
                      style: TextStyling.bold.copyWith(
                        fontSize: 24.sp,
                      ),
                    ),
                    VerticalSpacing(5.h),
                    Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          color: AppColors.grey,
                          size: 18.w,
                        ),
                        HorizontalSpacing(4.w),
                        Text(
                          '01 February, 2024',
                          style: TextStyling.regular.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.lightGrey,
                          ),
                        ),
                      ],
                    ),
                    VerticalSpacing(10.h),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.r),
                      child: Image.asset(
                        AssetImages.layOfTheDayPost,
                        width: double.infinity,
                        height: 150.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    VerticalSpacing(10.h),
                    Text(
                      "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                      style: TextStyling.regular.copyWith(
                        fontSize: 13.sp,
                        // color: AppColors.lightGrey,
                        height: 2,
                      ),
                    ),
                    VerticalSpacing(30.h),
                    Text(
                      "aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.",
                      style: TextStyling.regular.copyWith(
                        fontSize: 13.sp,
                        // color: AppColors.lightGrey,
                        height: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  PostDetailViewModel viewModelBuilder(BuildContext context) =>
      PostDetailViewModel();

  @override
  void onViewModelReady(PostDetailViewModel model) => model.init();
}
