import 'dart:math';

import 'package:stacked/stacked.dart';

class NotificationsViewModel extends ReactiveViewModel {
  bool showNotifications = false;

  init() {
    final random = Random(1);
    final randomNum = random.nextInt(100000);

    if (randomNum % 2 == 0) {
      showNotifications = true;
    } else {
      showNotifications = false;
    }
    notifyListeners();
  }
}
