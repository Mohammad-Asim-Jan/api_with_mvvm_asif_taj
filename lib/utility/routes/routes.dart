import 'package:api_with_mvvm_asif_taj/utility/routes/app_routes_names.dart';
import 'package:api_with_mvvm_asif_taj/view/home_view.dart';
import 'package:api_with_mvvm_asif_taj/view/login_view.dart';
import 'package:api_with_mvvm_asif_taj/view/signup_view.dart';
import 'package:flutter/material.dart';

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
