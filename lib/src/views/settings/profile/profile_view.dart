import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/base/utils/utils.dart';
import 'package:starter_app/src/shared/custom_app_bar.dart';
import 'package:starter_app/src/shared/custom_form_field.dart';
import 'package:starter_app/src/shared/spacing.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';
import 'package:starter_app/src/views/settings/profile/profile_view_model.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  @override
  Widget builder(BuildContext context, ProfileViewModel model, Widget? child) {
    return Scaffold(
      body: Container(
        width: context.screenSize().width,
        height: context.screenSize().height,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Column(
            children: [
              Stack(
                fit: StackFit.passthrough,
                clipBehavior: Clip.none,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipPath(
                      clipper: BottomClipper(),
                      child: Container(
                        height: 300.h,
                        decoration: BoxDecoration(
                          gradient: AppColors.profileBgGradient,
                          // borderRadius: BorderRadius.only(
                          //   bottomLeft: Radius.circular(220.r),
                          //   bottomRight: Radius.circular(220.r),
                          // ),
                          // shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          children: [
                            CustomAppBar(
                              titleText:
                                  model.isEditing ? 'Edit Profile' : 'Profile',
                              showSettings: false,
                              showBackButton: true,
                              showNotification: false,
                              trailingWidget: Visibility(
                                visible: !model.isEditing,
                                maintainSize: true,
                                maintainAnimation: true,
                                maintainState: true,
                                child: IconButton(
                                  onPressed: () {
                                    model.toggleEditing(true);
                                  },
                                  icon: Icon(Icons.edit),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: -10.h,
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: [
                        SizedBox(
                          height: 145.sp,
                          width: 145.sp,
                          child: CircleAvatar(
                            backgroundColor: AppColors.appBlack,
                            // radius: 80.r,
                            backgroundImage: Image.asset(
                              AssetImages.user,
                              fit: BoxFit.cover,
                            ).image,

                            child: null,
                          ),
                        ),
                        Visibility(
                          visible: model.isEditing,
                          child: Positioned(
                            bottom: 10,
                            // right: 10,
                            right: 150.w,
                            child: GestureDetector(
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      AppColors.appLightGreen.withOpacity(0.4),
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.lightGrey,
                                  ),
                                ),
                                padding: EdgeInsets.all(2),
                                child: Icon(
                                  Icons.edit,
                                  color: AppColors.lightGrey,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              VerticalSpacing(20.h),
              Text(
                'User name',
                style: TextStyling.bold.copyWith(
                  fontSize: 24.sp,
                ),
              ),
              Text(
                'youremail@domain.com | +01 234 567 89',
                style: TextStyling.regular.copyWith(
                  fontSize: 15.sp,
                  color: AppColors.lightGrey,
                ),
              ),
              VerticalSpacing(40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    CustomFormField(
                      // controller: model.nameController,
                      labelText: 'Fist name',
                      isPassword: false,
                      validatorFunction: (v) {
                        // return null;
                        if (v != null && v.length > 3) {
                          return null;
                        }
                        return 'Username must be atleast 3 chars long.';
                      },
                      primaryColor: AppColors.white,
                      textColor: AppColors.white,
                      isLabelCenter: false,
                    ),
                    SizedBox(height: 24.h),
                    CustomFormField(
                      // controller: model.nameController,
                      labelText: 'Last name',
                      isPassword: false,
                      validatorFunction: (v) {
                        // return null;
                        if (v != null && v.length > 3) {
                          return null;
                        }
                        return 'Username must be atleast 3 chars long.';
                      },
                      primaryColor: AppColors.white,
                      textColor: AppColors.white,
                      isLabelCenter: false,
                    ),
                    SizedBox(height: 24.h),
                    CustomFormField(
                      // controller: model.emailController,
                      labelText: 'Email',
                      isPassword: false,
                      validatorFunction: (v) {
                        return ValidationUtils.validateEmail(v);
                      },
                      primaryColor: AppColors.white,
                      textColor: AppColors.white,
                      isLabelCenter: false,
                    ),
                    SizedBox(height: 24.h),
                    CustomFormField(
                      maxLength: 10,
                      textInputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        FilteringTextInputFormatter.deny(RegExp('^0+'))
                      ],
                      prefixWidget: Padding(
                        padding: EdgeInsets.only(right: 4.w),
                        child: Text(
                          '+92',
                          style: TextStyling.medium.copyWith(
                              color: AppColors.appLightGreen, fontSize: 16.sp),
                        ),
                      ),
                      // controller: model.numberController,
                      labelText: 'Phone number',
                      isPassword: false,
                      validatorFunction: (v) {
                        return ValidationUtils.validateMobile(v);
                      },
                      primaryColor: AppColors.white,
                      textColor: AppColors.white,
                      isLabelCenter: false,
                    ),
                    SizedBox(height: 24.h),
                    CustomFormField(
                      // controller: model.passwordController,
                      labelText: 'Password',
                      isPassword: true,
                      validatorFunction: (v) {
                        return ValidationUtils.validatePassword(v);
                      },
                      primaryColor: AppColors.white,
                      textColor: AppColors.white,
                      isLabelCenter: false,
                    ),
                    Visibility(
                      visible: model.isEditing,
                      child: SizedBox(height: 40.h),
                    ),
                    Visibility(
                      visible: model.isEditing,
                      child: ElevatedButton(
                        onPressed: () {
                          model.toggleEditing(false);
                        },
                        child: Text('Save Changes'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          backgroundColor: AppColors.appDarkGreen,
                          foregroundColor: AppColors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(BuildContext context) => ProfileViewModel();

  @override
  void onViewModelReady(ProfileViewModel model) => model.init();
}

class BottomClipper extends CustomClipper<Path> {
  final int curveHeight = 100;
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(
        0, size.height - curveHeight); // Adjust the curve height as needed
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - curveHeight,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
