import 'package:flutter/material.dart';
import 'package:kulinerku/core/routing/routers.dart';
import 'package:kulinerku/features/home/ui/home_screen.dart';
import '../../features/home/ui/widgets/resturant_details.dart';
import '../../features/onboarding/ui/onboarding.dart';

class AppRouter {
  Route generateroutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnBoarding(),
        );
      case Routes.loginscreen:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
      case Routes.homescreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
        case Routes.editprofile:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
        case Routes.resturantDetails:
        return MaterialPageRoute(
          builder: (_) => ResturantDetails(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Text("No route Defined For $settings.name"),
          ),
        );
    }
  }
}
