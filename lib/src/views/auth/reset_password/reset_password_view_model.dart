import 'package:stacked/stacked.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';

class ResetPasswordViewModel extends ReactiveViewModel {
  init() {}

  onContinue() {
    NavService.login();
  }
}
