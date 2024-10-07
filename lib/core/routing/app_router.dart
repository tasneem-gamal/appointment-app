import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/feature/home/logic/cubit/search_cubit.dart';
import 'package:appointment_app/feature/home/logic/home_cubit/home_cubit.dart';
import 'package:appointment_app/feature/home/ui/widgets/see_all_recommendation_doctors/see_all_recommendation_doctors_view.dart';
import 'package:appointment_app/feature/login/logic/login_cubit/login_cubit.dart';
import 'package:appointment_app/feature/login/ui/login_view.dart';
import 'package:appointment_app/feature/on_boarding_view/on_boarding_view.dart';
import 'package:appointment_app/feature/sign_up/logic/sign_cubit/sign_cubit.dart';
import 'package:appointment_app/feature/sign_up/ui/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/home/ui/home_view.dart';

class AppRouter {
  Route? generateRoutes(RouteSettings settings) {
    // arg to be passed
    final argument = settings.name;
    switch (settings.name) {
      // on boarding view
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());

      // home view and its related views
      case Routes.homeView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => HomeCubit(getIt())..getSpecializations(),
                  child: const HomeView(),
                ));

      case Routes.seeAllRecommendationDoctorsView:
  final String searchQuery = argument as String;
  return MaterialPageRoute(
    builder: (_) => MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(create: (context) => getIt<HomeCubit>()),
        BlocProvider<SearchCubit>(create: (context) => SearchCubit(getIt())..searchForDoctors(searchQuery)),
      ],
      child: const SeeAllRecommendationDoctorsView(),
    ),
  );

      // sign up view
      case Routes.signUpView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignCubit>(),
                  child: const SignUpView(),
                ));

      // login view
      case Routes.loginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginView(),
                ));
      default:
        return null;
    }
  }
}
