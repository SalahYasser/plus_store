import 'package:flutter/material.dart';
import 'package:plus_store/core/routes/routes.dart';
import 'package:plus_store/core/widgets/custom_loader.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    handleStartupNavigation();
  }

  Future<void> handleStartupNavigation() async {
    await Future.delayed(const Duration(milliseconds: 900));

    final prefs = await SharedPreferences.getInstance();
    final bool hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false;
    final bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    final String? lastView = prefs.getString('lastOpenedView');

    String nextRoute;

    if (lastView == Routes.onBoardingView) {
      nextRoute = Routes.onBoardingView;
    } else if (isLoggedIn) {
      nextRoute = Routes.homeView;
    } else if (!hasSeenOnboarding) {
      nextRoute = Routes.onBoardingView;
    } else {
      nextRoute = Routes.loginView;
    }

    if (!mounted) return;
    Navigator.pushReplacementNamed(context, nextRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          bottom: 300,
          child: Image.asset("assets/images/Element.png", fit: BoxFit.fill),
        ),

        Center(child: Image.asset("assets/images/plus.png")),

        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: CustomLoader(),
          ),
        ),
      ],
    );
  }
}
