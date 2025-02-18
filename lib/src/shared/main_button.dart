import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/src/styles/app_colors.dart';
import 'package:starter_app/src/styles/text_theme.dart';

class MainButton extends StatefulWidget {
  final String buttonText;
  final Color buttonFontColor;
  final VoidCallback onPressed;
  final bool fullWidth;
  final bool isLoading;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final double? fontSize;
  const MainButton({
    Key? key,
    required this.buttonText,
    this.buttonFontColor = Colors.white,
    required this.onPressed,
    this.fullWidth = true,
    required this.isLoading,
    this.height,
    this.width,
    this.padding,
    this.fontSize,
  }) : super(key: key);

  @override
  State<MainButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 65.h,
      width: widget.fullWidth ? double.infinity : widget.width,
      decoration: BoxDecoration(
        gradient: AppColors.buttonGradient,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(3),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          padding: MaterialStatePropertyAll(
            widget.padding ??
                EdgeInsets.symmetric(vertical: 10.h, horizontal: 24.w),
          ),
          visualDensity: VisualDensity.compact,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: widget.isLoading
            ? Padding(
                padding: const EdgeInsets.all(4.0),
                child: Transform.scale(
                  scale: 0.6,
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                ),
              )
            :
            // : Padding(
            //     // padding:
            //     //     const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            //     child:
            Text(
                widget.buttonText,
                style: TextStyling.semiBold.copyWith(
                  fontSize: widget.fontSize ?? 24.sp,
                ),
              ),
        // ),
      ),
    );
  }
}
