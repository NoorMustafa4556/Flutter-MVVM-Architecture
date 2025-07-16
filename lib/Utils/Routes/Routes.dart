// lib/utils/routes/routes.dart

import 'package:flutter/material.dart';
import '../../View/HomeScreen.dart';
import '../../View/LoginView.dart';
import '../../View/SignUpView.dart';
import '../../View/SplashView.dart';
import 'RoutesName.dart';


class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch(settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => const HomeScreen());

      case RoutesName.login:
        return MaterialPageRoute(builder: (BuildContext context) => const LoginView());case RoutesName.signup:
      return MaterialPageRoute(builder: (BuildContext context) => const SignUpView());

      case RoutesName.splash:
        return MaterialPageRoute(builder: (BuildContext context) => const SplashView());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}