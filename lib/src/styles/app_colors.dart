import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  AppColors._();

  static HexColor primary = HexColor("#4E1592");
  static HexColor secondary = HexColor("#a06fdb");

  //DEFAULT COLORS
  static HexColor grey = HexColor("#949494");
  static HexColor lightGrey = HexColor("#D9D9D9");
  static HexColor darkGrey = HexColor("#474747");
  static HexColor black = HexColor("#000000");
  static HexColor white = HexColor("#ffffff");
  static HexColor peach = HexColor("#FCEFDA");
  static HexColor yellow = HexColor("#FFDB45");
  static HexColor purple = HexColor("#743FA9");
  static HexColor green = HexColor("#41BD6F");
  static HexColor red = HexColor("#BD0000");

  //APP COLORS
  static HexColor appBlack = HexColor("#1B1B1B");
  static HexColor appSecondaryBlack = HexColor("#202020");
  static HexColor appDarkGrey = HexColor("#878787");

  static HexColor appLightGreen = HexColor("#6AFF37");
  static HexColor appGreenAccent = HexColor("#9EFF7F");
  static HexColor appDarkGreen = HexColor("#43B11E");
  static HexColor appPink = HexColor("#FF0C8F");
  static HexColor appBottomNavarBg = HexColor("#0A2700");

  static HexColor appPromotionBannerPinkLight = HexColor("#9f4770");
  static HexColor appPromotionBannerPinkDark = HexColor("#933f60");

  static Gradient buttonGradient = LinearGradient(
    colors: [
      AppColors.appLightGreen,
      AppColors.appDarkGreen.withOpacity(0.8),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static Gradient promotionBannerGradient = LinearGradient(
    colors: [
      AppColors.appPromotionBannerPinkDark,
      AppColors.appPromotionBannerPinkLight,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static Gradient arbitageCalculatorGradient = LinearGradient(
    colors: [
      AppColors.appLightGreen.withOpacity(0.6),
      AppColors.appDarkGreen.withOpacity(0.5)
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );

  static Gradient profileBgGradient = LinearGradient(
    colors: [
      AppColors.appPink.withOpacity(0.4),
      AppColors.appDarkGreen.withOpacity(0.32),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static Gradient onboardingBgGradient = LinearGradient(
    colors: [
      HexColor('#43B11E').withOpacity(0.65),
      HexColor('#6AFF37').withOpacity(0.8),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  static Gradient gameDetailCardGradient = LinearGradient(
    colors: [
      HexColor('#6AFF37').withOpacity(0.4),
      HexColor('#43B11E').withOpacity(0.32),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomRight,
  );
}
