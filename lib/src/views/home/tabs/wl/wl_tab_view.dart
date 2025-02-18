import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/custom_tab_widget.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';
import 'package:starter_app/src/views/home/tabs/wl/leaderboard.dart';
import 'package:starter_app/src/views/home/tabs/wl/my_bets.dart';
import 'package:starter_app/src/views/home/tabs/wl/newsfeed.dart';
import 'package:starter_app/src/views/home/tabs/wl/overview.dart';

class WLTabView extends StatelessWidget {
  const WLTabView({Key? key, required this.model}) : super(key: key);
  final HomeViewModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize().height,
      width: context.screenSize().width,
      child: Column(
        children: [
          CustomAppBar(
            showBackButton: false,
            titleText: 'W/L',
            showNotification: true,
            showSettings: false,
          ),
          VerticalSpacing(20.h),
          SizedBox(
            height: 40.sp,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: model.wLtabs.length,
              itemBuilder: (context, index) => CustomTabWidget(
                isSelected: model.wlSelectedTab == index,
                onTap: () => model.onTabWlTabChanged(index),
                title: model.wLtabs[index],
              ),
            ),
          ),
          VerticalSpacing(10.h),
          getTab(model.wlSelectedTab, model),
        ],
      ),
    );
  }
}

Widget getTab(int index, HomeViewModel model) {
  switch (index) {
    case 0:
      return Overview(
        model: model,
      );
    case 1:
      return MyBets(
        model: model,
      );
    case 2:
      return Leaderboard(
        model: model,
      );
    case 3:
      return Newsfeed(
        model: model,
      );
    default:
      return Text('no view');
  }
}
