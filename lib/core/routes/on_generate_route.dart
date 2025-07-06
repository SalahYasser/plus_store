import 'package:flutter/material.dart';
import 'package:plus_store/core/routes/routes.dart';

import '../../features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case Routes.splashView:
      return MaterialPageRoute(builder: (_) => const SplashView());

    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());
  }
}
