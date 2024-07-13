import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/features/cart/cubits/cubit/cart_cubit.dart';
import 'package:shop_app/features/cart/data/repos/cart_repo.dart';
import 'package:shop_app/features/cart/presentation/views/cart_view.dart';
import 'package:shop_app/features/home/cubits/banner/banner_cubit.dart';
import '../../features/main/logic/cubit/nav_bar_cubit.dart';
import '../../features/product_details/presentation/views/product_details.dart';
import '../../features/home/presentation/views/home_view.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/presentation/views/login_view.dart';
import '../../features/main/presentation/views/main_view.dart';
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

      case Routes.mainScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NavBarCubit(),
            child: const MainView(),
          ),
        );

      // case Routes.allProducts:
      //   return MaterialPageRoute(builder: (_) => const AllProducts());

      case Routes.home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  //TODO see this why I have to add this here
                  create: (context) => BannerCubit(getIt()),
                  child: const HomeView(),
                ));

      case Routes.cart:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => CartCubit(getIt())..fetchCartItems(),
                  child: const CartView(),
                ));

      // Product Details
      case Routes.productDetails:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => ProductDetailsView(
                  productId: args['id'],
                  images: args['images'],
                  description: args['description'],
                  price: args['price'],
                  nameOfProduct: args['title'],
                  image: args['image'],
                ));

      default:
        return null;
    }
  }
}
