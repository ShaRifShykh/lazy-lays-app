import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:starter_app/src/shared/custom_navbar.dart';
import 'package:starter_app/src/views/home/home_view_model.dart';
import 'package:starter_app/src/views/home/tabs/all_sports/all_sports_tab_view.dart';
import 'package:starter_app/src/views/home/tabs/arbitage_betting_tab_view.dart';
import 'package:starter_app/src/views/home/tabs/search_tab_view.dart';
import 'package:starter_app/src/views/home/tabs/system_favourite/system_favourite_tab_view.dart';
import 'package:starter_app/src/views/home/tabs/wl/wl_tab_view.dart';

class HomeView extends StackedView<HomeViewModel> {
  @override
  Widget builder(BuildContext context, HomeViewModel model, Widget? child) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: model.currentIndex,
            children: [
              SystemFavouriteTabView(model: model),
              SearchTabView(),
              AllSportsTabView(model: model),
              ArbitageBettingTabView(model: model),
              WLTabView(model: model),
            ],
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: CustomBottomNavBar(
          //     selectedIndex: model.currentIndex,
          //     onChange: (int value) async {
          //       model.onPageChanged(value);
          //     },
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: model.currentIndex,
        onChange: (int value) async {
          model.onPageChanged(value);
        },
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  void onViewModelReady(HomeViewModel model) => model.init();
}
