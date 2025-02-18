// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i29;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i30;
import 'package:starter_app/src/views/auth/forget_password/forget_password_view.dart'
    as _i7;
import 'package:starter_app/src/views/auth/login/login_view.dart' as _i4;
import 'package:starter_app/src/views/auth/otp/otp_view.dart' as _i6;
import 'package:starter_app/src/views/auth/register/register_view.dart' as _i5;
import 'package:starter_app/src/views/auth/reset_password/reset_password_view.dart'
    as _i9;
import 'package:starter_app/src/views/auth/welcome/welcome_view.dart' as _i8;
import 'package:starter_app/src/views/home/home_view.dart' as _i10;
import 'package:starter_app/src/views/home/tabs/all_sports/sports_detail_view.dart'
    as _i21;
import 'package:starter_app/src/views/home/tabs/system_favourite/all_odds_detail_view.dart'
    as _i20;
import 'package:starter_app/src/views/home/tabs/system_favourite/all_odds_view.dart'
    as _i19;
import 'package:starter_app/src/views/home/tabs/system_favourite/consistency_sheet_view.dart'
    as _i16;
import 'package:starter_app/src/views/home/tabs/system_favourite/winning_system_detail_view.dart'
    as _i18;
import 'package:starter_app/src/views/home/tabs/system_favourite/winning_system_view.dart'
    as _i17;
import 'package:starter_app/src/views/home/tabs/wl/chat%20section/chat/chat_view.dart'
    as _i14;
import 'package:starter_app/src/views/home/tabs/wl/chat%20section/chat_menu/chat_menu_view.dart'
    as _i13;
import 'package:starter_app/src/views/notifications/notifications_view.dart'
    as _i15;
import 'package:starter_app/src/views/onboarding/onboarding_view.dart' as _i3;
import 'package:starter_app/src/views/post/post_view.dart' as _i11;
import 'package:starter_app/src/views/post_detail/post_detail_view.dart'
    as _i12;
import 'package:starter_app/src/views/settings/add_sports_book/add_sports_book_view.dart'
    as _i23;
import 'package:starter_app/src/views/settings/get_premium/get_premium_view.dart'
    as _i25;
import 'package:starter_app/src/views/settings/notification_Settings/notification_settings_view.dart'
    as _i26;
import 'package:starter_app/src/views/settings/privacy_policy/privacy_policy_view.dart'
    as _i27;
import 'package:starter_app/src/views/settings/profile/profile_view.dart'
    as _i28;
import 'package:starter_app/src/views/settings/settings_view.dart' as _i22;
import 'package:starter_app/src/views/settings/sports_book_detail/sports_book_detail_view.dart'
    as _i24;
import 'package:starter_app/src/views/splash/splash_view.dart' as _i2;

class Routes {
  static const splashView = '/';

  static const onboardingView = '/onboarding-view';

  static const loginView = '/login-view';

  static const registerView = '/register-view';

  static const otpView = '/otp-view';

  static const forgetPasswordView = '/forget-password-view';

  static const welcomeView = '/welcome-view';

  static const resetPasswordView = '/reset-password-view';

  static const homeView = '/home-view';

  static const postView = '/post-view';

  static const postDetailView = '/post-detail-view';

  static const chatMenuView = '/chat-menu-view';

  static const chatView = '/chat-view';

  static const notificationsView = '/notifications-view';

  static const consistencySheetView = '/consistency-sheet-view';

  static const winningSystemView = '/winning-system-view';

  static const winningSystemDetailView = '/winning-system-detail-view';

  static const allOddsView = '/all-odds-view';

  static const allOddsDetailView = '/all-odds-detail-view';

  static const sportsDetailView = '/sports-detail-view';

  static const settingsView = '/settings-view';

  static const addSportsBookView = '/add-sports-book-view';

  static const sportsBookDetailView = '/sports-book-detail-view';

  static const getPremiumView = '/get-premium-view';

  static const notificationSettingsView = '/notification-settings-view';

  static const privacyPolicyView = '/privacy-policy-view';

  static const profileView = '/profile-view';

  static const all = <String>{
    splashView,
    onboardingView,
    loginView,
    registerView,
    otpView,
    forgetPasswordView,
    welcomeView,
    resetPasswordView,
    homeView,
    postView,
    postDetailView,
    chatMenuView,
    chatView,
    notificationsView,
    consistencySheetView,
    winningSystemView,
    winningSystemDetailView,
    allOddsView,
    allOddsDetailView,
    sportsDetailView,
    settingsView,
    addSportsBookView,
    sportsBookDetailView,
    getPremiumView,
    notificationSettingsView,
    privacyPolicyView,
    profileView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.splashView,
      page: _i2.SplashView,
    ),
    _i1.RouteDef(
      Routes.onboardingView,
      page: _i3.OnboardingView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.registerView,
      page: _i5.RegisterView,
    ),
    _i1.RouteDef(
      Routes.otpView,
      page: _i6.OtpView,
    ),
    _i1.RouteDef(
      Routes.forgetPasswordView,
      page: _i7.ForgetPasswordView,
    ),
    _i1.RouteDef(
      Routes.welcomeView,
      page: _i8.WelcomeView,
    ),
    _i1.RouteDef(
      Routes.resetPasswordView,
      page: _i9.ResetPasswordView,
    ),
    _i1.RouteDef(
      Routes.homeView,
      page: _i10.HomeView,
    ),
    _i1.RouteDef(
      Routes.postView,
      page: _i11.PostView,
    ),
    _i1.RouteDef(
      Routes.postDetailView,
      page: _i12.PostDetailView,
    ),
    _i1.RouteDef(
      Routes.chatMenuView,
      page: _i13.ChatMenuView,
    ),
    _i1.RouteDef(
      Routes.chatView,
      page: _i14.ChatView,
    ),
    _i1.RouteDef(
      Routes.notificationsView,
      page: _i15.NotificationsView,
    ),
    _i1.RouteDef(
      Routes.consistencySheetView,
      page: _i16.ConsistencySheetView,
    ),
    _i1.RouteDef(
      Routes.winningSystemView,
      page: _i17.WinningSystemView,
    ),
    _i1.RouteDef(
      Routes.winningSystemDetailView,
      page: _i18.WinningSystemDetailView,
    ),
    _i1.RouteDef(
      Routes.allOddsView,
      page: _i19.AllOddsView,
    ),
    _i1.RouteDef(
      Routes.allOddsDetailView,
      page: _i20.AllOddsDetailView,
    ),
    _i1.RouteDef(
      Routes.sportsDetailView,
      page: _i21.SportsDetailView,
    ),
    _i1.RouteDef(
      Routes.settingsView,
      page: _i22.SettingsView,
    ),
    _i1.RouteDef(
      Routes.addSportsBookView,
      page: _i23.AddSportsBookView,
    ),
    _i1.RouteDef(
      Routes.sportsBookDetailView,
      page: _i24.SportsBookDetailView,
    ),
    _i1.RouteDef(
      Routes.getPremiumView,
      page: _i25.GetPremiumView,
    ),
    _i1.RouteDef(
      Routes.notificationSettingsView,
      page: _i26.NotificationSettingsView,
    ),
    _i1.RouteDef(
      Routes.privacyPolicyView,
      page: _i27.PrivacyPolicyView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i28.ProfileView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.SplashView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i2.SplashView(),
        settings: data,
      );
    },
    _i3.OnboardingView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i3.OnboardingView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i4.LoginView(),
        settings: data,
      );
    },
    _i5.RegisterView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i5.RegisterView(),
        settings: data,
      );
    },
    _i6.OtpView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i6.OtpView(),
        settings: data,
      );
    },
    _i7.ForgetPasswordView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i7.ForgetPasswordView(),
        settings: data,
      );
    },
    _i8.WelcomeView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i8.WelcomeView(),
        settings: data,
      );
    },
    _i9.ResetPasswordView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.ResetPasswordView(),
        settings: data,
      );
    },
    _i10.HomeView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i10.HomeView(),
        settings: data,
      );
    },
    _i11.PostView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.PostView(),
        settings: data,
      );
    },
    _i12.PostDetailView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i12.PostDetailView(),
        settings: data,
      );
    },
    _i13.ChatMenuView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i13.ChatMenuView(),
        settings: data,
      );
    },
    _i14.ChatView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i14.ChatView(),
        settings: data,
      );
    },
    _i15.NotificationsView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i15.NotificationsView(),
        settings: data,
      );
    },
    _i16.ConsistencySheetView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i16.ConsistencySheetView(),
        settings: data,
      );
    },
    _i17.WinningSystemView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i17.WinningSystemView(),
        settings: data,
      );
    },
    _i18.WinningSystemDetailView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i18.WinningSystemDetailView(),
        settings: data,
      );
    },
    _i19.AllOddsView: (data) {
      final args = data.getArgs<AllOddsViewArguments>(
        orElse: () => const AllOddsViewArguments(),
      );
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i19.AllOddsView(key: args.key),
        settings: data,
      );
    },
    _i20.AllOddsDetailView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i20.AllOddsDetailView(),
        settings: data,
      );
    },
    _i21.SportsDetailView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => const _i21.SportsDetailView(),
        settings: data,
      );
    },
    _i22.SettingsView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i22.SettingsView(),
        settings: data,
      );
    },
    _i23.AddSportsBookView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i23.AddSportsBookView(),
        settings: data,
      );
    },
    _i24.SportsBookDetailView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i24.SportsBookDetailView(),
        settings: data,
      );
    },
    _i25.GetPremiumView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i25.GetPremiumView(),
        settings: data,
      );
    },
    _i26.NotificationSettingsView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i26.NotificationSettingsView(),
        settings: data,
      );
    },
    _i27.PrivacyPolicyView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i27.PrivacyPolicyView(),
        settings: data,
      );
    },
    _i28.ProfileView: (data) {
      return _i29.MaterialPageRoute<dynamic>(
        builder: (context) => _i28.ProfileView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class AllOddsViewArguments {
  const AllOddsViewArguments({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return '{"key": "$key"}';
  }

  @override
  bool operator ==(covariant AllOddsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key;
  }

  @override
  int get hashCode {
    return key.hashCode;
  }
}

extension NavigatorStateExtension on _i30.NavigationService {
  Future<dynamic> navigateToSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.otpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.resetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPostView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.postView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPostDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.postDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChatMenuView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chatMenuView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToChatView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.chatView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToConsistencySheetView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.consistencySheetView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWinningSystemView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.winningSystemView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWinningSystemDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.winningSystemDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAllOddsView({
    _i29.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.allOddsView,
        arguments: AllOddsViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAllOddsDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.allOddsDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSportsDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.sportsDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddSportsBookView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addSportsBookView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSportsBookDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.sportsBookDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGetPremiumView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.getPremiumView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotificationSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notificationSettingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToPrivacyPolicyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.privacyPolicyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSplashView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.splashView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOnboardingView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.onboardingView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithOtpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.otpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWelcomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.welcomeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithResetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.resetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPostView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.postView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPostDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.postDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChatMenuView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chatMenuView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithChatView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.chatView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithConsistencySheetView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.consistencySheetView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWinningSystemView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.winningSystemView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithWinningSystemDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.winningSystemDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAllOddsView({
    _i29.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.allOddsView,
        arguments: AllOddsViewArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAllOddsDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.allOddsDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSportsDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.sportsDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.settingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddSportsBookView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addSportsBookView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSportsBookDetailView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.sportsBookDetailView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGetPremiumView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.getPremiumView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotificationSettingsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notificationSettingsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithPrivacyPolicyView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.privacyPolicyView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
