import 'package:stacked/stacked.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';

class SettingsViewModel extends ReactiveViewModel {
  init() {}

  onClickGetPremium() {
    NavService.getPremium();
  }

  onClickProfile() {
    NavService.profile();
  }

  onClickAddSportsBook() {
    NavService.addSportsBook();
  }

  onClickNotificationSettings() {
    NavService.notificationSettings();
  }

  onClickPrivacyPolicy() {
    NavService.privacyPolicy();
  }

  onClickLogout() {
    NavService.login();
  }
}
