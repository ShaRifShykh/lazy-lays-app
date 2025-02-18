import 'package:stacked/stacked.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';

class ChatMenuViewModel extends ReactiveViewModel {
  init() {}

  List<String> games = [
    'All Games',
    'NHL',
    'NFL',
    'MLB',
    'NBA',
    'NFL',
    'MLB',
    'NBA',
    'NFL',
    'MLB',
    'NBA',
    'NFL',
    'MLB',
    'NBA',
  ];
  onClickChat() {
    NavService.chat();
  }
}
