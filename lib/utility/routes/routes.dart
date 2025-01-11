
import 'package:flutter/material.dart';

import '../../view/home_view.dart';
import '../../view/login_view.dart';
import '../../view/signup_view.dart';
import 'app_routes_names.dart';

class Routes {
  static Route<dynamic>? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutesNames.login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case AppRoutesNames.signup:
        return MaterialPageRoute(builder: (context) => const SignupView());
      case AppRoutesNames.home:
        return MaterialPageRoute(builder: (context) => const HomeView());
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(child: Text('No route defines')),
                ));
    }
  }
}
