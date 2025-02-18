import 'package:stacked/stacked.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';

class AddSportsBookViewModel extends ReactiveViewModel {
  init() {}

  List<String> countries = [
    'United States',
    'Canada',
  ];

  List<String> states = [
    'Alabama',
    'Alaska',
    'Arizona',
    'Florida',
    'California',
  ];

  onClickLink() {
    NavService.sportsBookDetail();
  }
}
