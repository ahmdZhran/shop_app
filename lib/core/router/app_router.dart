import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/bottom_navigation/widget/custom_navigation_bottom.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/home/presentation/widgets/all_categories/all_categories.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/presentation/views/login_view.dart';
import '../../features/onboarding/presentation/views/onboarding_view.dart';
import '../../features/sign_up/logic/cubit/signup_cubit.dart';
import '../../features/sign_up/presentation/views/sign_up_view.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );

      case Routes.login:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(getIt()),
                  child: const LoginView(),
                ));

      case Routes.signup:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => SignupCubit(getIt()),
                  child: const SignUpView(),
                ));

      case Routes.mainNavBottomBar:
        return MaterialPageRoute(builder: (_) => const HomeNavBarWidget());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());

      case Routes.allCategories:
        return MaterialPageRoute(builder: (_) => const AllCategoriesView());

      default:
        return null;
    }
  }
}
