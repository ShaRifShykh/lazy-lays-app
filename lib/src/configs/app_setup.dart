import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter_app/src/services/local/auth_service.dart';
import 'package:starter_app/src/services/local/connectivity_service.dart';
import 'package:starter_app/src/services/local/keyboard_service.dart';
import 'package:starter_app/src/services/remote/api_service.dart';
import 'package:starter_app/src/views/auth/forget_password/forget_password_view.dart';
import 'package:starter_app/src/views/auth/login/login_view.dart';
import 'package:starter_app/src/views/auth/otp/otp_view.dart';
import 'package:starter_app/src/views/auth/register/register_view.dart';
import 'package:starter_app/src/views/auth/reset_password/reset_password_view.dart';
import 'package:starter_app/src/views/auth/welcome/welcome_view.dart';
import 'package:starter_app/src/views/home/home_view.dart';
import 'package:starter_app/src/views/home/tabs/all_sports/sports_detail_view.dart';
import 'package:starter_app/src/views/home/tabs/system_favourite/all_odds_detail_view.dart';
import 'package:starter_app/src/views/home/tabs/system_favourite/all_odds_view.dart';
import 'package:starter_app/src/views/home/tabs/system_favourite/consistency_sheet_view.dart';
import 'package:starter_app/src/views/home/tabs/system_favourite/winning_system_detail_view.dart';
import 'package:starter_app/src/views/home/tabs/system_favourite/winning_system_view.dart';
import 'package:starter_app/src/views/home/tabs/wl/chat%20section/chat/chat_view.dart';
import 'package:starter_app/src/views/home/tabs/wl/chat%20section/chat_menu/chat_menu_view.dart';
import 'package:starter_app/src/views/notifications/notifications_view.dart';
import 'package:starter_app/src/views/onboarding/onboarding_view.dart';
import 'package:starter_app/src/views/post/post_view.dart';
import 'package:starter_app/src/views/post_detail/post_detail_view.dart';
import 'package:starter_app/src/views/settings/add_sports_book/add_sports_book_view.dart';
import 'package:starter_app/src/views/settings/get_premium/get_premium_view.dart';
import 'package:starter_app/src/views/settings/notification_Settings/notification_settings_view.dart';
import 'package:starter_app/src/views/settings/privacy_policy/privacy_policy_view.dart';
import 'package:starter_app/src/views/settings/profile/profile_view.dart';
import 'package:starter_app/src/views/settings/settings_view.dart';
import 'package:starter_app/src/views/settings/sports_book_detail/sports_book_detail_view.dart';
import 'package:starter_app/src/views/splash/splash_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),

    MaterialRoute(page: OnboardingView),

    //AUTH
    MaterialRoute(page: LoginView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: OtpView),
    MaterialRoute(page: ForgetPasswordView),
    MaterialRoute(page: WelcomeView),
    MaterialRoute(page: ResetPasswordView),

    //HOME
    MaterialRoute(page: HomeView),
    MaterialRoute(page: PostView),
    MaterialRoute(page: PostDetailView),

    MaterialRoute(page: ChatMenuView),
    MaterialRoute(page: ChatView),

    MaterialRoute(page: NotificationsView),

    //SYSTEM_FAVOURITE
    MaterialRoute(page: ConsistencySheetView),

    MaterialRoute(page: WinningSystemView),
    MaterialRoute(page: WinningSystemDetailView),

    MaterialRoute(page: AllOddsView),
    MaterialRoute(page: AllOddsDetailView),

    //ALL SPORTS
    MaterialRoute(page: SportsDetailView),

    //SETTINGS
    MaterialRoute(page: SettingsView),
    MaterialRoute(page: AddSportsBookView),
    MaterialRoute(page: SportsBookDetailView),
    MaterialRoute(page: GetPremiumView),
    MaterialRoute(page: NotificationSettingsView),
    MaterialRoute(page: PrivacyPolicyView),
    MaterialRoute(page: ProfileView),
  ],
  dependencies: [
    // Lazy singletons
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: ConnectivityService),
    LazySingleton(classType: KeyboardService),
    LazySingleton(classType: ApiService),
  ],
)
class AppSetup {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
