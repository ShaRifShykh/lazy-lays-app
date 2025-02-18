import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/generated/assets.dart';
import 'package:starter_app/src/services/local/navigation_service.dart';

class OnboardingViewModel extends ReactiveViewModel {
  init() {}

  int index = 0;
  final pageController = PageController();

  final List<OnboardingModel> onboardingPages = [
    OnboardingModel(
      title: 'Welcome to Your Betting Dashboard!',
      description:
          'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum',
      imagePath: AssetImages.onboardingImage1,
    ),
    OnboardingModel(
      title: 'Discover Your Winning Strategies!',
      description:
          'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum',
      imagePath: AssetImages.onboardingImage2,
    ),
    OnboardingModel(
      title: 'Boost Profits with Arbitrage Betting!',
      description:
          'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum',
      imagePath: AssetImages.onboardingImage3,
    ),
  ];

  onClickNext() {
    if (index == onboardingPages.length - 1) {
      NavService.welcome();
    } else {
      pageController.nextPage(
        duration: Duration(milliseconds: 200),
        curve: Curves.linear,
      );
    }
  }

  onClickPrev() {
    pageController.previousPage(
      duration: Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

class OnboardingModel {
  final String title;
  final String description;
  final String imagePath;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}
