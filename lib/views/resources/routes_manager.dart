import 'package:flutter/material.dart';
import '../forgot_password/forgot_password.dart';
import '../login/login.dart';
import '../main/main_view.dart';
import '../onboarding/onboarding.dart';
import '../register.dart/register.dart';
import '../store_details/store_details.dart';
import '../splash/splash.dart';
import 'strings_manager.dart';

class Routes{
  static const String splashRoute = "/";
  static const String onBoaringRoute = "/onBoarding";
  static const  String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
  static const String forGotPassword = "/forgot_password";

}



class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){

      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());

        case Routes.onBoaringRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());


        case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());

        case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());

        case Routes.forGotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());

        case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());


        case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());


        default:
        return unDefinedRoute();

    }
  }


  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_) => 
    Scaffold(
      appBar: AppBar(title: const Text(AppStrings.noRouteFound),),
      body: const Center(child: Text(AppStrings.noRouteFound)),
    )
    );
  }
}


