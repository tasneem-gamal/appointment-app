import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/feature/login/ui/login_view.dart';
import 'package:appointment_app/feature/on_boarding_view/on_boarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings){
    // arg to be passed
    //final argument = settings.name;
    switch(settings.name){
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView()
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView()
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Center(
            child: Text('No route defined for ${settings.name}'),
          )
        );
    }
  }
}