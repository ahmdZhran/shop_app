import 'package:flutter/material.dart';
import 'package:shop_app/core/router/routes.dart';
// import 'package:shop_app/features/auth/presentation/views/login_view.dart';
import 'package:shop_app/features/auth/presentation/views/login_view.dart';
// import 'package:shop_app/features/auth/presentation/views/sign_up.dart';
import 'package:shop_app/features/home/presentation/views/home_view.dart';

import '../../features/onboarding/presentation/views/onboarding_view.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.signup:
      // return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());

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
