import 'package:flutter/material.dart';
import 'package:plus_store/core/prefs/prefs.dart';
import 'package:plus_store/core/routes/routes.dart';
import 'package:plus_store/core/widgets/custom_loader.dart';

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

    final String? lastView = await Prefs.getCurrentScreen();

    final String nextRoute = lastView ?? Routes.onBoardingView;

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
