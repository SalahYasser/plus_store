import 'package:flutter/material.dart';
import 'package:plus_store/core/widgets/custom_loader.dart';
import '../../../../on_boarding/presentation/views/on_boarding_view.dart';

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

            // child: Loader(),
          ),
        ),
      ],
    );
  }
}
