
import 'package:flutter/material.dart';
import 'package:red_flag/pages/login_page.dart';
import 'package:red_flag/pages/overview_page.dart';
import 'package:red_flag/pages/registration_page.dart';

class Routing {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      
      case '/initialPage':
        return MaterialPageRoute(builder: (_) => const InitialPage());

        case '/overviewPage':
        return MaterialPageRoute(builder: (_) => const OverviewPage());
        case '/registrationPage':
        return MaterialPageRoute(builder: (_) => const RegistrationPage());
      default:
        return MaterialPageRoute(builder: (_) => const InitialPage());
    }
  }
}