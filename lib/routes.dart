import 'package:finance/presentation/cards/my_cards.dart';
import 'package:finance/presentation/homepage/home_page.dart';
import 'package:finance/presentation/profile/profile_page.dart';
import 'package:flutter/material.dart';

Route<dynamic> routeGenreate(RouteSettings settings) {
  switch (settings.name) {
    case HomePage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const HomePage(),
      );

    case ProfilePage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const ProfilePage(),
      );

    case MyCards.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const MyCards(),
      );

    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Error 404 page not fould'),
          ),
        ),
      );
  }
}
