import 'package:flutter/material.dart';
import 'core/routes/on_generate_route.dart';
import 'core/routes/routes.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const PlusStore());
}

class PlusStore extends StatelessWidget {
  const PlusStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: Routes.splashView,
      home: const SplashView(),
    );
  }
}
