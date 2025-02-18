import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';

class ChatCardWidget extends StatelessWidget {
  const ChatCardWidget({
    Key? key,
    required this.name,
    required this.filename,
    required this.message,
    required this.read,
    required this.onTap,
  }) : super(key: key);
  final String name;
  final String filename;
  final String message;
  final bool read;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12.h),
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    UserAvatar(
                      filename: filename,
                      radius: 68.w,
                    ),
                    SizedBox(width: 16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyling.medium.copyWith(
                            fontSize: 17.sp,
                          ),
                        ),
                        VerticalSpacing(3.h),
                        Text(
                          message,
                          style: TextStyling.regular.copyWith(
                            fontSize: 14.sp,
                            color: AppColors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SvgPicture.asset(
                  read ? AssetIcons.readIcon : AssetIcons.unreadIcon,
                  height: 18.sp,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  final double? radius;
  const UserAvatar({
    required this.filename,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: radius ?? 65.w,
      width: radius ?? 65.w,
      child: CircleAvatar(
        // radius: 65.r,
        backgroundColor: Colors.white,
        backgroundImage: Image.asset(AssetImages.placeholder250).image,
      ),
    );
  }
}
