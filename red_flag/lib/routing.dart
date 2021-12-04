import 'package:flutter/material.dart';
import 'package:red_flag/pages/forgot_password.dart';
import 'package:red_flag/pages/login_page.dart';
import 'package:red_flag/pages/overview_page.dart';
import 'package:red_flag/pages/registration_page.dart';

class Routing {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case '/loginPage':
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case '/overviewPage':
        return MaterialPageRoute(builder: (_) => const OverviewPage());
      case '/registrationPage':
        return MaterialPageRoute(builder: (_) => const RegistrationPage());

      case '/forgotPasswordPage':
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
      default:
        return MaterialPageRoute(builder: (_) => const LoginPage());
    }
  }
}
