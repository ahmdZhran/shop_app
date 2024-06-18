import 'package:flutter/material.dart';
import 'package:shop_app/core/router/routes.dart';

import '../../features/onboarding/presentation/views/onboarding_view.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      // case Routes.home:
      //   return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'no route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
