import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/models/arbitage_banner_model.dart';
import 'package:starter_app/src/models/betting_details_model.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';

class HomeViewModel extends ReactiveViewModel {
  int currentIndex = 0;
  int systemFavoriteSelectedTab = 0;

  int selectedMoneyLine = 0;

  onMoneyLineTabChanged(int v) {
    selectedMoneyLine = v;
    notifyListeners();
  }

  List<String> moneyLines = [
    'Money Line',
    'Puck Line',
    'Total',
  ];

  int wlSelectedTab = 0;

  int allSportsGameSelectedTab = 0;

  onAllSportsGameTabChanged(int v) {
    allSportsGameSelectedTab = v;
    notifyListeners();
  }

  onTabWlTabChanged(int v) {
    wlSelectedTab = v;
    notifyListeners();
  }

// TabController allSportsTabController = TabController(length: 2, vsync: );
  List<String> systemFavoritetabs = [
    'Consistency Sheets',
    'Winning System',
    'All Odds',
  ];

  List<String> wLtabs = [
    'Overview',
    'My Bets',
    'Leaderboard',
    'Newsfeed',
  ];

  List<String> games = [
    'All Games',
    'NHL',
    'NFL',
    'NBA',
    'MLB',
  ];

  List<String> timeFilter = [
    'Last Month',
    'Last 3 Months',
    'Last 6 Months',
    'Last Year',
  ];

  List<String> betFilter = [
    'All Bets',
    'Category 1',
    'Category 2',
    'Category 3',
  ];

  bool isActiveBetsExpanded = true;
  bool isPreviousBetsExpanded = false;

  toggleActiveBets() {
    isActiveBetsExpanded = !isActiveBetsExpanded;
    notifyListeners();
  }

  togglePreviousBets() {
    isPreviousBetsExpanded = !isPreviousBetsExpanded;
    notifyListeners();
  }

  List<String> leagures = [
    AssetImages.europa,
    AssetImages.europa,
    AssetImages.europa,
    AssetImages.europa,
    AssetImages.europa,
    AssetImages.europa,
  ];

  List<BettingDetailsModel> bets = [
    BettingDetailsModel(
      percentage: '+22.0%',
      eventDate: '7/01/24',
      event: 'San Jose Sharks Vs Anaheim Ducks',
      market: 'Player shots on Goal',
      books: '5 Dime',
    ),
    BettingDetailsModel(
      percentage: '+22.0%',
      eventDate: '7/01/24',
      event: 'San Jose Sharks Vs Anaheim Ducks',
      market: 'Player shots on Goal',
      books: '5 Dime',
    ),
    BettingDetailsModel(
      percentage: '+22.0%',
      eventDate: '7/01/24',
      event: 'San Jose Sharks Vs Anaheim Ducks',
      market: 'Player shots on Goal',
      books: '5 Dime',
    ),
    BettingDetailsModel(
      percentage: '+22.0%',
      eventDate: '7/01/24',
      event: 'San Jose Sharks Vs Anaheim Ducks',
      market: 'Player shots on Goal',
      books: '5 Dime',
    ),
  ];

  List<ArbitagBannerModel> arbitagePromotions = [
    ArbitagBannerModel(
      title: 'Calculate Probabilities',
      description:
          'We compute the implied probabilities of each outcome based on the odds provided by different bookmakers.',
      image: AssetImages.arbitageBettingPageViewPhoto,
    ),
    ArbitagBannerModel(
      title: 'Calculate Probabilities',
      description:
          'We compute the implied probabilities of each outcome based on the odds provided by different bookmakers.',
      image: AssetImages.arbitageBettingPageViewPhoto,
    ),
    ArbitagBannerModel(
      title: 'Calculate Probabilities',
      description:
          'We compute the implied probabilities of each outcome based on the odds provided by different bookmakers.',
      image: AssetImages.arbitageBettingPageViewPhoto,
    ),
  ];

  int currentArbitagePromotionIndex = 0;

  onArbitagePromotionChanged(int v) {
    currentArbitagePromotionIndex = v;
    notifyListeners();
  }

  onClickChatButton() {
    NavService.chatMenu();
  }

  final arbitagePromotionController = PageController();

  init() {}
  onPageChanged(int v) {
    currentIndex = v;
    notifyListeners();
  }

  onSystemFavoriteTabChanged(int v) {
    // systemFavoriteSelectedTab = v;
    if (v == 0) {
      NavService.consistencySheet();
    } else if (v == 1) {
      NavService.winningSystem();
    } else if (v == 2) {
      NavService.allOdds();
    }

    // notifyListeners();
  }

  onClickSettings() {
    NavService.settings();
  }

  onClickNotifications() {
    NavService.notifications();
  }

  onClickPost() {
    NavService.post();
  }

  //FOR CHARTS

  final List<ChartData> chartData = [
    ChartData('Mon', 80),
    ChartData('Tue', 50),
    ChartData('Wed', 200),
    ChartData('Thurs', 150),
    ChartData('Sat', 300),
    ChartData('Sun', 100),
  ];
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}
