import 'package:stacked/stacked.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';

class PostViewModel extends ReactiveViewModel {
  init() {}

  onClickPost() {
    NavService.postDetail();
  }
}
