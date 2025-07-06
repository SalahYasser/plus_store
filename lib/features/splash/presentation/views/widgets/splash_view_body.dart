import 'package:flutter/material.dart';
import 'package:plus_store/core/widgets/custom_loader.dart';
import 'package:plus_store/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 900), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const OnBoardingView()),
      );
    });

    // navigateNext();
  }

  // Future<void> navigateNext() async {
  //   await Future.delayed(const Duration(milliseconds: 900));
  //
  //   final prefs = await SharedPreferences.getInstance();
  //   final hasSeenOnboarding = prefs.getBool('hasSeenOnboarding') ?? false;
  //
  //   if (!mounted) return;
  //
  //   Navigator.of(context).pushReplacement(
  //     MaterialPageRoute(
  //       builder:
  //           (context) =>
  //               hasSeenOnboarding ? const LoginView() : const OnBoardingView(),
  //     ),
  //   );
  // }

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
