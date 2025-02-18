import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_app/src/base/utils/constants.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';
import 'package:starter_app/src/styles/app_colors.dart';

class AppView extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ));
    return ScreenUtilInit(
      designSize: Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, snapshot) {
        return MaterialApp(
          title: Constants.appTitle,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: NavService.onGenerateRoute,
          navigatorKey: NavService.key,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.appBlack,
            useMaterial3: true,
            colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: AppColors.appLightGreen,
              onPrimary: AppColors.white,
              secondary: AppColors.appBlack,
              onSecondary: AppColors.white,
              error: AppColors.red,
              onError: AppColors.white,
              background: AppColors.white,
              onBackground: AppColors.white,
              surface: AppColors.white,
              onSurface: AppColors.white,
            ),
            fontFamily: 'Poppins',
            appBarTheme: AppBarTheme(
              backgroundColor: AppColors.appBlack,
              foregroundColor: AppColors.white,
            ),
          ),
          builder: (context, child) {
            return Stack(
              children: [child!],
            );
          },
        );
      },
    );
  }
}
