import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/chat_card_widget.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/custom_form_field.dart';
import 'package:starter_app/src/shared/custom_game_tab_widget.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/home/tabs/wl/chat%20section/chat_menu/chat_menu_view_model.dart';

class ChatMenuView extends StackedView<ChatMenuViewModel> {
  @override
  Widget builder(BuildContext context, ChatMenuViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: Column(
          children: [
            CustomAppBar(
              showBackButton: true,
              titleText: 'Chat',
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  // left: 20.w,
                  // right: 20.w,
                  bottom: 20.w,
                  top: 10.w,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      child: CustomFormField(
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
                    ),
                    VerticalSpacing(20.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                      ),
                      child: Text(
                        'Find people that like the same sports as you',
                        style: TextStyling.regular.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.grey.withOpacity(0.3),
                        ),
                      ),
                    ),
                    VerticalSpacing(20.h),
                    Container(
                      height: 65.sp,
                      padding: EdgeInsets.only(
                        left: 20.w,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Games',
                            style: TextStyling.semiBold.copyWith(
                              fontSize: 24.sp,
                            ),
                          ),
                          HorizontalSpacing(12.w),
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: model.games.length,
                              itemBuilder: (context, index) =>
                                  CustomGameTabWidget(
                                // isSelected:
                                //     model.systemFavoriteSelectedTab == index,
                                isSelected: false,
                                onTap: () {},
                                title: model.games[index],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    VerticalSpacing(20.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.w,
                        right: 20.w,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recent Chats',
                            style: TextStyling.semiBold.copyWith(
                              fontSize: 24.sp,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.grey.withOpacity(0.3),
                            ),
                            child: IconButton(
                              visualDensity: VisualDensity.compact,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                AssetIcons.addChatIcon,
                                height: 20.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox()
                    VerticalSpacing(10.h),
                    SizedBox(
                      height: context.screenSize().height * 0.65,
                      child: ListView.builder(
                        padding: EdgeInsets.only(
                          top: 0.h,
                          bottom: 40.h,
                        ),
                        itemBuilder: (context, index) => ChatCardWidget(
                          name: 'Muazzam',
                          message: 'noice blah blah :)',
                          filename: '',
                          // msgCount: index.isEven ? 0 : 2,
                          read: index.isEven,
                          onTap: model.onClickChat,
                        ),
                        itemCount: 10,
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
  ChatMenuViewModel viewModelBuilder(BuildContext context) =>
      ChatMenuViewModel();

  @override
  void onViewModelReady(ChatMenuViewModel model) => model.init();
}
