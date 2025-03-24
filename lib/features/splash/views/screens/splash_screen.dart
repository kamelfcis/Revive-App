import 'package:flutter/material.dart';
import 'package:revive/core/app_route/route_names.dart';
import 'package:revive/core/utilies/extensions/app_extensions.dart';
import 'package:revive/features/splash/views/widgets/splash_screen_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    navigateToNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenBody(),
    );
  }

  void navigateToNextScreen() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        context.pushReplacementScreen(RouteNames.onBoardingScreen);
      },
    );
  }
}
