import 'package:flutter/material.dart';
import 'package:news_app/moduls/business/business_screen.dart';
import 'package:news_app/moduls/general/general_screen.dart';
import 'package:news_app/moduls/sciences/science_screen.dart';
import 'package:news_app/moduls/search/search_screen.dart';
import 'package:news_app/moduls/sports/sports_screen.dart';
import 'package:news_app/moduls/technology/technology_screen.dart';
import 'package:news_app/moduls/web_view/web_view.dart';

import '../../layouts/layout_screen.dart';
import '../../moduls/settings_screen.dart';
import 'strings_manager.dart';

class Routes {
  static const String layoutsScreen = '/';
  static const String generalScreen = '/general';
  static const String businessScreen = '/business';
  static const String scienceScreen = '/science';
  static const String technologyScreen = '/technology';
  static const String sportsScreen = '/sports';
  static const String settingsScreen = '/settings';
  static const String searchScreen = '/search';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.layoutsScreen:
        return MaterialPageRoute(builder: (_) => const LayoutsScreen());
      case Routes.generalScreen:
        return MaterialPageRoute(builder: (_) => const GeneralScreen());
      case Routes.businessScreen:
        return MaterialPageRoute(builder: (_) => const BusinessScreen());
      case Routes.scienceScreen:
        return MaterialPageRoute(builder: (_) => const ScienceScreen());
      case Routes.technologyScreen:
        return MaterialPageRoute(builder: (_) => const TechnologyScreen());
      case Routes.sportsScreen:
        return MaterialPageRoute(builder: (_) => const SportsScreen());
      case Routes.settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routes.searchScreen:
        return MaterialPageRoute(builder: (_) => SearchScreen());

      default:
        return unDefinedRoute();
    }
  }

  static unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(StringsManager.noRoutaFound),
              ),
              body: const Center(child: Text(StringsManager.noRoutaFound)),
            ));
  }
}
