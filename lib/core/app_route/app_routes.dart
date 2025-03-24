import 'package:flutter/material.dart';
import 'package:revive/core/app_route/route_names.dart';
import 'package:revive/features/auth/sign_in/views/screens/sign_in_screen.dart';
import 'package:revive/features/auth/sign_up/views/screens/sign_up_screen.dart';
import 'package:revive/features/on_boarding/views/screens/on_boarding_screen.dart';
import 'package:revive/features/splash/views/screens/splash_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
    RouteNames.splashScreen: (context) => const SplashScreen(),
    RouteNames.onBoardingScreen: (context) => const OnBoardingScreen(),
    RouteNames.signUpScreen: (context) => const SignUpScreen(),
    RouteNames.signInScreen: (context) => const SignInScreen(),

    // RouteNames.renterHomeScreen: (context) => const RenterHomeScreen(),
    // RouteNames.selectItemScreen: (context) => SelectItemScreen(),
    // RouteNames.sellEaseScreen: (context) => SellEaseScreen(),
    // RouteNames.myHousesScreen: (context) => MyHousesScreen(),
    // RouteNames.showMyRequestScreen: (context) => ShowMyRequestScreen(),
    // RouteNames.requestDetailsScreen: (context) => RequestDetailsScreen(),
    // RouteNames.chatScreen: (context) => ChatScreen(),
    // RouteNames.renterRequestsScreen: (context) => MyRequestsScreen(),
    // RouteNames.profileScreen: (context) => ProfileScreen(),

  };
}
