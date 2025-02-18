import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';

class Newsfeed extends StatelessWidget {
  const Newsfeed({Key? key, required this.model}) : super(key: key);

  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 10.h,
        ),
        child: Column(
          children: [
            WritePostWidget(),
            VerticalSpacing(20.h),
            PostWidget(),
            VerticalSpacing(20.h),
            PostWidget(),
          ],
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(),
          VerticalSpacing(8.h),
          Text(
            'Fingers crossed, blah blah........',
            style: TextStyling.regular.copyWith(
              fontSize: 13.sp,
              color: AppColors.lightGrey,
            ),
          ),
          VerticalSpacing(16.h),
          BetCard(),
          VerticalSpacing(20.h),
          PostActionSection(),
          VerticalSpacing(10.h),
          CommentWidget(),
          VerticalSpacing(10.h),
          AddCommentSection(),
        ],
      ),
    );
  }
}

class BetCard extends StatelessWidget {
  const BetCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        gradient: AppColors.arbitageCalculatorGradient,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Bets placed: 30',
            style: TextStyling.semiBold.copyWith(
              fontSize: 13.sp,
            ),
          ),
          Text(
            '18+, 14+, 13+ , 20+,1+, 14+, 13+ , 20+,18+, 14+, 13+ , 20',
            style: TextStyling.regular.copyWith(
              fontSize: 13.sp,
            ),
          ),
          Text(
            'Odds shown are at time of post and are subject to change',
            style: TextStyling.regular.copyWith(
              fontSize: 13.sp,
              color: AppColors.lightGrey.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }
}

class PostActionSection extends StatelessWidget {
  const PostActionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LikeButton(
                  size: 24.sp,
                ),
                Text(
                  '12 likes',
                  style: TextStyling.regular.copyWith(
                    fontSize: 8.sp,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],
            ),
            HorizontalSpacing(10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // LikeButton(
                //   size: 30.sp,
                // ),
                IconButton(
                  constraints: BoxConstraints(),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AssetIcons.commentButtonIcon,
                    height: 24.sp,
                  ),
                  color: AppColors.lightGrey,
                  style: IconButton.styleFrom(
                    visualDensity: VisualDensity.compact,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                VerticalSpacing(2.h),
                Text(
                  '12 Comments',
                  style: TextStyling.regular.copyWith(
                    fontSize: 8.sp,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],
            ),
            HorizontalSpacing(10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  constraints: BoxConstraints(),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AssetIcons.shareButtonIconNewsfeed,
                    height: 24.sp,
                  ),
                  color: AppColors.lightGrey,
                  style: IconButton.styleFrom(
                    visualDensity: VisualDensity.compact,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                VerticalSpacing(2.h),
                Text(
                  '5 shares',
                  style: TextStyling.regular.copyWith(
                    fontSize: 8.sp,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          constraints: BoxConstraints(),
          onPressed: () {},
          icon: SvgPicture.asset(
            AssetIcons.bookmarkButtonIcon,
            height: 24.sp,
          ),
          color: AppColors.lightGrey,
          style: IconButton.styleFrom(
            visualDensity: VisualDensity.compact,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ],
    );
  }
}

class PostHeader extends StatelessWidget {
  const PostHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 40.w,
              height: 40.w,
              child: CircleAvatar(
                backgroundImage: AssetImage(AssetImages.user),
              ),
            ),
            HorizontalSpacing(8.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Username Name',
                  style: TextStyling.semiBold.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  '14 mins ago',
                  style: TextStyling.regular.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.lightGrey.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
              ),
              onPressed: () {},
              child: Text(
                '+Follow',
                style: TextStyling.semiBold.copyWith(
                  fontSize: 13.sp,
                  color: AppColors.appLightGreen,
                ),
              ),
            ),
            IconButton(
              constraints: BoxConstraints(),
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
              style: IconButton.styleFrom(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                padding: EdgeInsets.zero,
                visualDensity: VisualDensity.compact,
              ),
            )
          ],
        )
      ],
    );
  }
}

class WritePostWidget extends StatelessWidget {
  const WritePostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
      width: double.infinity,
      height: 52.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Write a post or share a bet',
            style: TextStyling.regular.copyWith(
              fontSize: 13.sp,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                constraints: BoxConstraints(),
                icon: SvgPicture.asset(
                  AssetIcons.newsFeedEdit,
                  height: 18.h,
                ),
                style: IconButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                ),
              ),
              HorizontalSpacing(10.w),
              IconButton(
                constraints: BoxConstraints(),
                onPressed: () {},
                icon: SvgPicture.asset(
                  AssetIcons.newsFeedPhotoEdit,
                  height: 18.h,
                ),
                style: IconButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.zero,
                  visualDensity: VisualDensity.compact,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(16.r),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
      width: double.infinity,
      height: 52.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Sam_32',
                style: TextStyling.semiBold.copyWith(
                  fontSize: 15.sp,
                ),
              ),
              HorizontalSpacing(10.w),
              Text(
                'Really Excited......',
                style: TextStyling.regular.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.lightGrey.withOpacity(0.9),
                ),
              ),
            ],
          ),
          LikeButton(
            size: 20.sp,
          ),
        ],
      ),
    );
  }
}

class AddCommentSection extends StatelessWidget {
  const AddCommentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 27.w,
                height: 27.w,
                child: CircleAvatar(
                  backgroundImage: AssetImage(AssetImages.user),
                ),
              ),
              HorizontalSpacing(10.w),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Add a comment',
                    hintStyle: TextStyling.regular.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.lightGrey.withOpacity(0.9),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
          ),
          onPressed: () {},
          child: Text(
            'View all comments',
            style: TextStyling.semiBold.copyWith(
              fontSize: 13.sp,
              color: AppColors.lightGrey.withOpacity(0.9),
            ),
          ),
        ),
      ],
    );
  }
}
