import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/feature/login/logic/login_cubit/login_cubit.dart';
import 'package:appointment_app/feature/login/ui/login_view.dart';
import 'package:appointment_app/feature/on_boarding_view/on_boarding_view.dart';
import 'package:appointment_app/feature/sign_up/logic/sign_cubit/sign_cubit.dart';
import 'package:appointment_app/feature/sign_up/ui/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/home/ui/home_view.dart';

class AppRouter {
  Route generateRoutes(RouteSettings settings) {
    // arg to be passed
    //final argument = settings.name;
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.homeView:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.signUpView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignCubit>(),
                  child: const SignUpView(),
                ));
      case Routes.loginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Center(
                  child: Text('No route defined for ${settings.name}'),
                ));
    }
  }
}
