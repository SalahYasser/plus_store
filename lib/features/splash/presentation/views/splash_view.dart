import 'package:flutter/material.dart';
import 'package:plus_store/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF171717),
        body: SplashViewBody(),
    );
  }
}
