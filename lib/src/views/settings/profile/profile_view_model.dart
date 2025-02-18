import 'package:stacked/stacked.dart';

class ProfileViewModel extends ReactiveViewModel {
  init() {}
  bool isEditing = false;

  toggleEditing(bool v) {
    isEditing = v;
    notifyListeners();
  }
}
