import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter_app/src/configs/app_setup.locator.dart';
import 'package:starter_app/src/configs/app_setup.router.dart';

class NavService {
  static NavigationService? _navigationService = locator<NavigationService>();
  // key
  static GlobalKey<NavigatorState>? get key => StackedService.navigatorKey;

  // on generate route
  static Route<dynamic>? Function(RouteSettings) get onGenerateRoute =>
      StackedRouter().onGenerateRoute;

  //CLEAR_STACK_AND_SHOW
  static Future<dynamic>? splash({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.splashView, arguments: arguments);
  static Future<dynamic>? login({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.loginView, arguments: arguments);
  static Future<dynamic>? onboarding({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.onboardingView, arguments: arguments);
  static Future<dynamic>? welcome({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.welcomeView, arguments: arguments);
  static Future<dynamic>? register({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.registerView, arguments: arguments);
  static Future<dynamic>? home({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.homeView, arguments: arguments);

  //NAVIGATE TO
  static Future<dynamic>? forgetPassword({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.forgetPasswordView, arguments: arguments);
  static Future<dynamic>? registerNavigateTo({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.registerView, arguments: arguments);
  static Future<dynamic>? otp({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.otpView, arguments: arguments);
  static Future<dynamic>? resetPassword({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.resetPasswordView, arguments: arguments);

  static Future<dynamic>? post({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.postView, arguments: arguments);
  static Future<dynamic>? postDetail({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.postDetailView, arguments: arguments);

  static Future<dynamic>? chatMenu({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.chatMenuView, arguments: arguments);
  static Future<dynamic>? chat({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.chatView, arguments: arguments);

  //SYSTEM_FAVOURITE
  static Future<dynamic>? consistencySheet({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.consistencySheetView, arguments: arguments);
  static Future<dynamic>? winningSystem({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.winningSystemView, arguments: arguments);
  static Future<dynamic>? allOdds({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.allOddsView, arguments: arguments);

  static Future<dynamic>? gameDetails({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.sportsDetailView, arguments: arguments);

  static Future<dynamic>? allOddsDetail({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.allOddsDetailView, arguments: arguments);

  static Future<dynamic>? winningSystemDetail({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.winningSystemDetailView, arguments: arguments);

  //SETTINGS
  static Future<dynamic>? settings({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.settingsView, arguments: arguments);
  static Future<dynamic>? addSportsBook({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.addSportsBookView, arguments: arguments);
  static Future<dynamic>? sportsBookDetail({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.sportsBookDetailView, arguments: arguments);
  static Future<dynamic>? notificationSettings({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.notificationSettingsView, arguments: arguments);
  static Future<dynamic>? profile({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.profileView, arguments: arguments);
  static Future<dynamic>? getPremium({dynamic arguments}) => _navigationService!
      .navigateTo(Routes.getPremiumView, arguments: arguments);
  static Future<dynamic>? privacyPolicy({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.privacyPolicyView, arguments: arguments);

  static Future<dynamic>? notifications({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.notificationsView, arguments: arguments);

  //TO GO BACK
  static bool back({dynamic arguments}) => _navigationService!.back();
}
