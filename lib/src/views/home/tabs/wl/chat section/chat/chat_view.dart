import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/tabs/wl/chat%20section/chat/chat_view_model.dart';

class ChatView extends StackedView<ChatViewModel> {
  @override
  Widget builder(BuildContext context, ChatViewModel model, Widget? child) {
    return Scaffold(
      body: Column(
        children: [
          UserHeader(filename: ''),
          Expanded(
            child: GroupedListView<Message, DateTime>(
              elements: model.messages,
              groupBy: (message) => DateTime(
                message.dateTime.year,
                message.dateTime.month,
                message.dateTime.day,
              ),
              reverse: true,
              order: GroupedListOrder.DESC,
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
              groupHeaderBuilder: (element) => Center(
                child: Container(
                  color: AppColors.appBlack,
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Text(
                      element.dateTime.day == DateTime.now().day
                          ? DateFormat('HH:mm').format(element.dateTime)
                          : DateFormat('dd/MM/yyyy').format(element.dateTime),
                      style: TextStyling.medium.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                ),
              ),
              separator: SizedBox(
                height: 5.h,
              ),
              floatingHeader: true,
              itemBuilder: (context, element) => Align(
                alignment: element.isSentByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: context.screenSize().width * 0.75,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.r),
                            // ),
                            color: element.isSentByMe
                                ? AppColors.grey.withOpacity(0.1)
                                : AppColors.white.withOpacity(0.2),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 5.h,
                          ),
                          child: Padding(
                            // padding: EdgeInsets.all(16.w),
                            padding: EdgeInsets.symmetric(
                              vertical: 10.w,
                              horizontal: 16.w,
                            ),
                            child: Text(
                              element.message,
                              style:
                                  TextStyling.regular.copyWith(fontSize: 14.sp),
                            ),
                          ),
                        ),
                      ),
                      if (element.isSentByMe) ...[
                        HorizontalSpacing(4.w),
                        SvgPicture.asset(
                          element.isRead
                              ? AssetIcons.readIcon
                              : AssetIcons.unreadIcon,
                          height: 16.sp,
                          color: AppColors.appLightGreen,
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                iconSize: 24.w,
                visualDensity: VisualDensity.standard,
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
                color: AppColors.appLightGreen,
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
              ),
              IconButton(
                iconSize: 24.w,
                visualDensity: VisualDensity.compact,
                onPressed: () {},
                icon: Icon(Icons.photo_library_outlined),
                // iconSize: 24.w,
                color: AppColors.appLightGreen,
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
              ),
              IconButton(
                iconSize: 24.w,
                visualDensity: VisualDensity.compact,
                onPressed: () {},
                icon: Icon(Icons.mic),
                // iconSize: 24.w,
                color: AppColors.appLightGreen,
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
              ),
              Expanded(
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.r),
                    color: AppColors.grey.withOpacity(0.2),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      // prefixIcon: IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(Icons.camera_alt),
                      //   // iconSize: 24.w,
                      //   color: AppColors.appLightGreen,
                      //   padding: EdgeInsets.zero,
                      //   constraints: BoxConstraints(),
                      // ),
                      constraints: BoxConstraints(),
                      hintText: 'Message',
                      hintStyle: TextStyling.semiBold
                          .copyWith(fontSize: 13.sp, color: AppColors.grey),
                      border: InputBorder.none,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.emoji_emotions),
                        // iconSize: 24.w,
                        color: AppColors.appLightGreen,
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                      ),
                    ),
                    style: TextStyling.regular.copyWith(),
                    cursorColor: AppColors.white,
                    maxLines: 7,
                    minLines: 1,
                  ),
                ),
              ),
              IconButton(
                iconSize: 24.w,
                visualDensity: VisualDensity.compact,
                onPressed: () {},
                icon: Icon(Icons.thumb_up_rounded),
                // iconSize: 24.w,
                color: AppColors.appLightGreen,
                padding: EdgeInsets.zero,
                constraints: BoxConstraints(),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  ChatViewModel viewModelBuilder(BuildContext context) => ChatViewModel();

  @override
  void onViewModelReady(ChatViewModel model) => model.init();
}

class UserHeader extends StatelessWidget {
  final String filename;
  final double? radius;
  const UserHeader({
    required this.filename,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40.h,
        left: 16.w,
        right: 16.w,
        bottom: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(16.r),
                onTap: () {
                  NavService.back();
                },
                child: Padding(
                  padding: EdgeInsets.all(4.w),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        size: 24.r,
                        color: AppColors.white,
                      ),
                      SizedBox(width: 2.w),
                      SizedBox(
                        height: radius ?? 44.w,
                        width: radius ?? 44.w,
                        child: CircleAvatar(
                          // radius: 65.r,
                          backgroundColor: Colors.white,
                          backgroundImage: Image.asset(AssetImages.user).image,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 5.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User name',
                    style: TextStyling.extraBold.copyWith(fontSize: 17.sp),
                  ),
                  Text(
                    'Last seen 7 mins ago',
                    style: TextStyling.regular.copyWith(
                        fontSize: 13.sp,
                        color: AppColors.white.withOpacity(0.5)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
