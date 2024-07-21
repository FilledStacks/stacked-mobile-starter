import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/ui/views/home/home_view.dart';
import 'package:stacked_mobile_starter/ui/views/profile/profile_view.dart';
import 'package:stacked_mobile_starter/ui/views/search/search_view.dart';

class GetIndexView extends StatelessWidget {
  final int currentIndex;
  const GetIndexView({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    switch (currentIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const SearchView();
      case 2:
        return const ProfileView();
      default:
        return const HomeView();
    }
  }
}
