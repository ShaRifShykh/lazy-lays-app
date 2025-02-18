import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';

import 'splash_view_model.dart';

class SplashView extends StackedView<SplashViewModel> {
  @override
  Widget builder(BuildContext context, SplashViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              AssetImages.splashLogo,
              height: 387.h,
            ),
            Spacer(),
            SizedBox(
              width: 80.w,
              height: 80.w,
              child: CircularProgressIndicator(),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel();

  @override
  void onViewModelReady(SplashViewModel model) => model.init();
}
