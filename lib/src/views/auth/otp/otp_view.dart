import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
// import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';
import 'package:starter_app/src/shared/main_button.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
// import 'package:starter_app/src/views/chat/chat_view_model.dart';
import 'package:starter_app/src/views/auth/otp/otp_view_model.dart';

class OtpView extends StackedView<OtpViewModel> {
  @override
  Widget builder(BuildContext context, OtpViewModel model, Widget? child) {
    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.w,
      textStyle: TextStyling.medium,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.appSecondaryBlack,
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColors.appDarkGreen),
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: AppColors.white,
          onPressed: () {
            NavService.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'Verification',
          style: TextStyling.semiBold,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: context.screenSize().width,
          height: context.screenSize().height - kToolbarHeight,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(AssetImages.verification),
              ),
              SizedBox(height: 10.h),
              Text(
                'Enter the verification code',
                style: TextStyling.medium,
              ),
              SizedBox(height: 40.h),
              Pinput(
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                length: 4,
                // controller: ,
                controller: model.otpController,
              ),
              // SizedBox(height: 40.h),
              Spacer(),
              MainButton(
                buttonText: 'Verify',
                buttonFontColor: AppColors.white,
                onPressed: () {
                  // model.onVerify(user?.sId);
                  model.onVerify();
                },
                isLoading: model.isBusy,
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  OtpViewModel viewModelBuilder(BuildContext context) => OtpViewModel();

  @override
  void onViewModelReady(OtpViewModel model) => model.init();

  // @override
  // void onDispose(OtpViewModel model) {
  //   super.onDispose(model);
  // }
}

// Future<bool> showExitConfirmationDialog(BuildContext context) async {
//   Completer<bool> completer = Completer<bool>();

//   await showDialog(
//     context: context,
//     builder: (_) => AlertDialog(
//       backgroundColor: AppColors.white,
//       insetPadding: EdgeInsets.only(left: 10.0, right: 10.0),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0.r),
//       ),
//       title: Text(
//         'Email not verified',
//         textAlign: TextAlign.center,
//         style: TextStyling.regular.copyWith(
//           fontSize: 16.sp,
//           color: AppColors.black,
//         ),
//       ),
//       content: Text('Are you sure you want to go back?'),
//       actions: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GestureDetector(
//               onTap: () {
//                 completer.complete(true);
//                 if (context.mounted) {
//                   Navigator.pop(context);
//                 }
//               },
//               child: Container(
//                 height: 40.0.h,
//                 width: 70.0.w,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12.0),
//                   color: AppColors.white,
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Yes",
//                     style: TextStyling.regular.copyWith(
//                       fontSize: 12.sp,
//                       color: AppColors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             HorizontalSpacing(15.w),
//             GestureDetector(
//               onTap: () {
//                 completer.complete(false);
//                 if (context.mounted) {
//                   Navigator.pop(context);
//                 }
//               },
//               child: Container(
//                 height: 40.0.h,
//                 width: 70.0.w,
//                 decoration: BoxDecoration(
//                   color: AppColors.primary,
//                   borderRadius: BorderRadius.circular(12.0),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "No",
//                     style: TextStyling.regular.copyWith(
//                       fontSize: 12.sp,
//                       color: AppColors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         VerticalSpacing(10),
//       ],
//     ),
//   );
//   return completer.future;
// }
