import 'package:flutter/material.dart';
import 'package:plus_store/core/routes/routes.dart';
import 'package:plus_store/features/on_boarding/presentation/views/on_boarding_view.dart';

import '../../features/login/presentation/views/login_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case Routes.splashView:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case Routes.loginView:
      return MaterialPageRoute(builder: (_) => const LoginView());

    case Routes.onBoardingView:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
