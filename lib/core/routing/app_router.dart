import 'package:flutter/material.dart';
import 'package:kulinerku/core/routing/routers.dart';
import 'package:kulinerku/features/KulinerKuInfluencer/ui/KulinerKu_Influencer.dart';
import 'package:kulinerku/features/KulinerKuInfluencer/ui/widgets/KulinerKu_Influencer_viedio_page.dart';
import 'package:kulinerku/features/home/ui/home_screen.dart';
import 'package:kulinerku/features/profile/ui/widgets/edit_profile_screen.dart';
import '../../features/KulinerKuInfluencer/ui/widgets/kulinerKu_influencer_uploading_video.dart';
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
      case Routes.resturantDetails:
        return MaterialPageRoute(
          builder: (_) => const ResturantDetails(),
        );
      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (_) => const EditProfile(),
        );
      case Routes.kulinerKuinfluencer:
        return MaterialPageRoute(
          builder: (_) => const KulinerKuInfluencer(),
        );
      case Routes.kulinerKuinfluencervideopage:
        return MaterialPageRoute(
          builder: (_) => const KulinerKuInfluencerVideoPage(),
        );
         case Routes.videouploadingpage:
        return MaterialPageRoute(
          builder: (_) => const VideoUploadingPage(),
        );
        
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route Defined For $settings.name")),
          ),
        );
    }
  }
}
