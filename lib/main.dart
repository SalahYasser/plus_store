import 'package:flutter/material.dart';
import 'core/routes/on_generate_route.dart';
import 'core/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
    );
  }
}
